import { useState, useMemo } from 'react'
import type { User, UserStatus } from '@/lib/api/types'

export function useUsersFilter(users: User[]) {
  const [searchTerm, setSearchTerm] = useState('')
  const [selectedStatus, setSelectedStatus] = useState<UserStatus | ''>('')

  const filteredUsers = useMemo(() => {
    let filtered = users

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
  }, [users, searchTerm, selectedStatus])

  return {
    searchTerm,
    setSearchTerm,
    selectedStatus,
    setSelectedStatus,
    filteredUsers,
  }
}
