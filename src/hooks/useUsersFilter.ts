import { useState, useMemo } from 'react'
import type { User, UserStatus } from '@/lib/api/types'
import type { UserRole } from '@/types/roles'

export function useUsersFilter(users: User[]) {
  const [searchTerm, setSearchTerm] = useState('')
  const [selectedRole, setSelectedRole] = useState<UserRole | ''>('')
  const [selectedStatus, setSelectedStatus] = useState<UserStatus | ''>('')

  const filteredUsers = useMemo(() => {
    let filtered = users

    if (selectedRole) {
      filtered = filtered.filter((user) => user.role === selectedRole)
    }

    if (selectedStatus) {
      filtered = filtered.filter((user) => user.status === selectedStatus)
    }

    if (searchTerm) {
      const query = searchTerm.toLowerCase()
      filtered = filtered.filter((user) =>
        user.name.toLowerCase().includes(query) ||
        user.email.toLowerCase().includes(query)
      )
    }

    return filtered
  }, [users, searchTerm, selectedRole, selectedStatus])

  return {
    searchTerm,
    setSearchTerm,
    selectedRole,
    setSelectedRole,
    selectedStatus,
    setSelectedStatus,
    filteredUsers,
  }
}
