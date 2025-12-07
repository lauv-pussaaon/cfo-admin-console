import { useState, useMemo } from 'react'
import type { User } from '@/lib/api/types'
import type { UserRole } from '@/types/roles'

export function useUsersFilter(users: User[]) {
  const [searchTerm, setSearchTerm] = useState('')
  const [selectedRole, setSelectedRole] = useState<UserRole | ''>('')

  const filteredUsers = useMemo(() => {
    let filtered = users

    // Filter by role
    if (selectedRole) {
      filtered = filtered.filter((user) => user.role === selectedRole)
    }

    // Filter by search term
    if (searchTerm) {
      const query = searchTerm.toLowerCase()
      filtered = filtered.filter((user) => 
        user.name.toLowerCase().includes(query) ||
        user.email.toLowerCase().includes(query)
      )
    }

    return filtered
  }, [users, searchTerm, selectedRole])

  return {
    searchTerm,
    setSearchTerm,
    selectedRole,
    setSelectedRole,
    filteredUsers,
  }
}
