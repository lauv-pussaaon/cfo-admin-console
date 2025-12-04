import { useState, useMemo } from 'react'
import type { User } from '@/lib/api/types'

export function useUsersFilter(users: User[]) {
  const [searchTerm, setSearchTerm] = useState('')

  const filteredUsers = useMemo(() => {
    if (!searchTerm) return users
    
    const query = searchTerm.toLowerCase()
    return users.filter((user) => 
      user.name.toLowerCase().includes(query) ||
      user.email.toLowerCase().includes(query)
    )
  }, [users, searchTerm])

  return {
    searchTerm,
    setSearchTerm,
    filteredUsers,
  }
}
