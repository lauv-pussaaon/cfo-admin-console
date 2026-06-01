import type { User } from './types'
import { ValidationError } from '@/lib/utils/errors'
import { fetchJson } from './fetch-client'

export const getUsers = async (): Promise<User[]> => {
  try {
    return await fetchJson<User[]>('/api/users')
  } catch (error) {
    if (error instanceof Error && error.message.includes('fetch')) {
      throw new Error('Failed to connect to the database. Please check your database configuration and network connection.')
    }
    throw error
  }
}

export const getCurrentUser = async (): Promise<User | null> => {
  const userId = typeof window !== 'undefined' ? localStorage.getItem('cfo_user_id') : null
  if (!userId) return null
  return getUserById(userId)
}

export const getUserById = async (userId: string): Promise<User | null> => {
  try {
    return await fetchJson<User | null>(`/api/users/${userId}`)
  } catch (error) {
    if (error instanceof Error && (error.message.includes('404') || error.message.includes('not found'))) {
      return null
    }
    throw error
  }
}

export const createUser = async (data: {
  username: string
  email: string
  password: string
  name: string
  avatar_url?: string | null
  role?: string
  is_approved?: boolean
}): Promise<User> => {
  return fetchJson<User>('/api/users', {
    method: 'POST',
    body: JSON.stringify(data),
  })
}

export const updateUser = async (
  id: string,
  updates: Partial<{
    username: string
    email: string
    password?: string
    name: string
    avatar_url: string | null
    role: string
    is_approved: boolean
  }>
): Promise<User> => {
  return fetchJson<User>(`/api/users/${id}`, {
    method: 'PATCH',
    body: JSON.stringify(updates),
  })
}

export const login = async (usernameOrEmail: string, password: string): Promise<User> => {
  try {
    const response = await fetch('/api/auth/login', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ usernameOrEmail, password }),
    })

    if (!response.ok) {
      const errorData = await response.json().catch(() => ({ error: 'Authentication failed' }))
      throw new ValidationError(errorData.error || 'ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง')
    }

    return (await response.json()) as User
  } catch (error) {
    if (error instanceof ValidationError) {
      throw error
    }
    if (error instanceof Error && error.message.includes('fetch')) {
      throw new Error('Failed to connect to the database. Please check your database configuration and network connection.')
    }
    throw error
  }
}

export const deleteUser = async (id: string): Promise<void> => {
  await fetchJson(`/api/users/${id}`, { method: 'DELETE' })
}
