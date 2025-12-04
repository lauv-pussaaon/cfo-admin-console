'use client'

import React, { createContext, useContext, useState, useEffect, ReactNode } from 'react'
import { login as loginAPI, getUserById } from '@/lib/api/auth'
import { userService } from '@/lib/services'
import type { User } from '@/lib/api/types'

interface AuthContextType {
  user: User | null
  isLoading: boolean
  login: (usernameOrEmail: string, password: string) => Promise<void>
  logout: () => void
  updateUser: (updates: Partial<{ name: string; avatar_url: string | null }>) => Promise<void>
}

const AuthContext = createContext<AuthContextType | undefined>(undefined)

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<User | null>(null)
  const [isLoading, setIsLoading] = useState(true)

  const loadUser = async (userId: string) => {
    setIsLoading(true)
    try {
      const foundUser = await getUserById(userId)
      if (foundUser) {
        setUser(foundUser)
      } else {
        localStorage.removeItem('cfo_user_id')
        setUser(null)
      }
    } catch (error) {
      console.error('Failed to load user:', error)
      localStorage.removeItem('cfo_user_id')
      setUser(null)
    } finally {
      setIsLoading(false)
    }
  }

  useEffect(() => {
    // Check for stored user on mount
    const storedUserId = localStorage.getItem('cfo_user_id')
    if (storedUserId) {
      loadUser(storedUserId)
    } else {
      setIsLoading(false)
    }
  }, [])

  const login = async (usernameOrEmail: string, password: string) => {
    setIsLoading(true)
    try {
      const user = await loginAPI(usernameOrEmail, password)
      setUser(user)
      console.log('Login successful:', user)
      localStorage.setItem('cfo_user_id', user.id)
    } catch (error) {
      console.error('Login failed:', error)
      throw error
    } finally {
      setIsLoading(false)
    }
  }

  const logout = () => {
    setUser(null)
    localStorage.removeItem('cfo_user_id')
  }

  const updateUser = async (updates: Partial<{ name: string; avatar_url: string | null }>) => {
    if (!user) return

    try {
      const updatedUser = await userService.updateUser(user.id, updates)
      setUser(updatedUser)
    } catch (error) {
      console.error('Failed to update user:', error)
      throw error
    }
  }

  return (
    <AuthContext.Provider value={{ user, isLoading, login, logout, updateUser }}>
      {children}
    </AuthContext.Provider>
  )
}

export function useAuth() {
  const context = useContext(AuthContext)
  if (context === undefined) {
    throw new Error('useAuth must be used within an AuthProvider')
  }
  return context
}
