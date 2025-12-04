import { useState, useMemo } from 'react'
import type { OrganizationWithStats } from '@/types/database'

export function useOrganizationsFilter(organizations: OrganizationWithStats[]) {
  const [searchTerm, setSearchTerm] = useState('')

  const filteredOrganizations = useMemo(() => {
    if (!searchTerm) return organizations
    
    const query = searchTerm.toLowerCase()
    return organizations.filter((org) => 
      org.name.toLowerCase().includes(query) ||
      (org.code && org.code.toLowerCase().includes(query))
    )
  }, [organizations, searchTerm])

  return {
    searchTerm,
    setSearchTerm,
    filteredOrganizations,
  }
}

