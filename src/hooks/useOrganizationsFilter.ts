import { useState, useMemo } from 'react'
import type { OrganizationWithStats } from '@/types/database'
import type { OrganizationWithCreator } from '@/lib/api/organizations'

export type OrganizationFilterRow = OrganizationWithStats | OrganizationWithCreator

export type DeploymentStatusFilter = 'all' | 'deployed' | 'pending'

export function useOrganizationsFilter(organizations: OrganizationFilterRow[]) {
  const [searchTerm, setSearchTerm] = useState('')
  const [statusFilter, setStatusFilter] = useState<DeploymentStatusFilter>('all')
  const [createdFrom, setCreatedFrom] = useState('')
  const [createdTo, setCreatedTo] = useState('')

  const filteredOrganizations = useMemo(() => {
    let list = organizations.slice()

    if (statusFilter === 'deployed') {
      list = list.filter((o) => o.is_initialized)
    } else if (statusFilter === 'pending') {
      list = list.filter((o) => !o.is_initialized)
    }

    if (createdFrom) {
      const from = new Date(createdFrom)
      from.setHours(0, 0, 0, 0)
      list = list.filter((o) => new Date(o.created_at) >= from)
    }
    if (createdTo) {
      const to = new Date(createdTo)
      to.setHours(23, 59, 59, 999)
      list = list.filter((o) => new Date(o.created_at) <= to)
    }

    if (!searchTerm.trim()) return list

    const query = searchTerm.toLowerCase().trim()
    return list.filter((org) => {
      if (org.name.toLowerCase().includes(query)) return true
      if (org.code?.toLowerCase().includes(query)) return true
      if (org.factory_admin_email?.toLowerCase().includes(query)) return true
      if (org.description?.toLowerCase().includes(query)) return true

      const enriched = org as OrganizationWithCreator
      if (enriched.creator) {
        if (enriched.creator.email?.toLowerCase().includes(query)) return true
        if (enriched.creator.name?.toLowerCase().includes(query)) return true
      }
      if (enriched.dealer) {
        if (enriched.dealer.email?.toLowerCase().includes(query)) return true
        if (enriched.dealer.name?.toLowerCase().includes(query)) return true
      }
      return false
    })
  }, [organizations, searchTerm, statusFilter, createdFrom, createdTo])

  return {
    searchTerm,
    setSearchTerm,
    statusFilter,
    setStatusFilter,
    createdFrom,
    setCreatedFrom,
    createdTo,
    setCreatedTo,
    filteredOrganizations,
  }
}
