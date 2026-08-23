import { supabase } from '@/lib/supabase'
import { deleteMappingsByFuelResourceIds } from '@/lib/api/activity-group-fuel-resources'
import { ensureEfCatalogRelease, refreshReleaseCounts } from '@/lib/api/ef-catalog-releases'
import {
  bulkUpsertFuelResources,
  listActiveFuelIdsByVersion,
  listFuelResourcesForExport,
  listFuelVersionsByIds,
  softDeleteFuelIds,
} from '@/lib/api/fuel-resources'
import {
  parseFuelResourceMeta,
  type EfCatalogVersionBackup,
  type FuelResource,
} from '@/types/emission-resources'

const BACKUP_WRITE_CHUNK = 200
const BACKUP_READ_CHUNK = 1000

type BackupHeaderRow = {
  id: string
  source_version: string
  fuel_count: number
  created_at: string
  created_by: string | null
}

function toBackupFuelRow (fuel: FuelResource, backupId: string) {
  return {
    backup_id: backupId,
    id: fuel.id,
    scope_category_id: fuel.scope_category_id,
    resource: fuel.resource,
    sub_category: fuel.sub_category,
    unit: fuel.unit,
    ef_value: fuel.ef_value,
    value1_label: fuel.value1_label,
    value1_unit: fuel.value1_unit,
    value2_label: fuel.value2_label,
    value2_unit: fuel.value2_unit,
    ref_info: fuel.ref_info,
    ref_co2: fuel.ref_co2,
    ref_fossil_ch4: fuel.ref_fossil_ch4,
    ref_ch4: fuel.ref_ch4,
    ref_n2o: fuel.ref_n2o,
    ref_sf6: fuel.ref_sf6,
    ref_nf3: fuel.ref_nf3,
    ref_hfcs: fuel.ref_hfcs,
    ref_pfcs: fuel.ref_pfcs,
    gwp100_hfcs: fuel.gwp100_hfcs,
    gwp100_pfcs: fuel.gwp100_pfcs,
    extraghg_ef: fuel.extraghg_ef,
    extraghg_gwp100: fuel.extraghg_gwp100,
    ref_source: fuel.ref_source,
    version: fuel.version,
    ref_code: fuel.ref_code,
    sort_index: fuel.sort_index,
    multiplier: fuel.multiplier,
    description: fuel.description,
    meta: fuel.meta ?? {},
    created_at: fuel.created_at,
    updated_at: fuel.updated_at,
  }
}

function toLiveFuelRow (row: Record<string, unknown>, version: string): Partial<FuelResource> {
  return {
    id: String(row.id),
    scope_category_id: String(row.scope_category_id),
    resource: String(row.resource ?? ''),
    sub_category: (row.sub_category as string | null) ?? null,
    unit: (row.unit as string | null) ?? null,
    ef_value: row.ef_value == null ? null : Number(row.ef_value),
    value1_label: (row.value1_label as string | null) ?? null,
    value1_unit: (row.value1_unit as string | null) ?? null,
    value2_label: (row.value2_label as string | null) ?? null,
    value2_unit: (row.value2_unit as string | null) ?? null,
    ref_info: (row.ref_info as string | null) ?? null,
    description: (row.description as string | null) ?? null,
    meta: parseFuelResourceMeta(row.meta) ?? {},
    ref_co2: row.ref_co2 == null ? null : Number(row.ref_co2),
    ref_fossil_ch4: row.ref_fossil_ch4 == null ? null : Number(row.ref_fossil_ch4),
    ref_ch4: row.ref_ch4 == null ? null : Number(row.ref_ch4),
    ref_n2o: row.ref_n2o == null ? null : Number(row.ref_n2o),
    ref_sf6: row.ref_sf6 == null ? null : Number(row.ref_sf6),
    ref_nf3: row.ref_nf3 == null ? null : Number(row.ref_nf3),
    ref_hfcs: row.ref_hfcs == null ? null : Number(row.ref_hfcs),
    ref_pfcs: row.ref_pfcs == null ? null : Number(row.ref_pfcs),
    gwp100_hfcs: row.gwp100_hfcs == null ? null : Number(row.gwp100_hfcs),
    gwp100_pfcs: row.gwp100_pfcs == null ? null : Number(row.gwp100_pfcs),
    extraghg_ef: row.extraghg_ef == null ? null : Number(row.extraghg_ef),
    extraghg_gwp100: row.extraghg_gwp100 == null ? null : Number(row.extraghg_gwp100),
    ref_source: (row.ref_source as FuelResource['ref_source']) ?? null,
    version,
    ref_code: (row.ref_code as string | null) ?? null,
    sort_index: row.sort_index == null ? null : Number(row.sort_index),
    multiplier: row.multiplier == null ? 1 : Number(row.multiplier),
    created_at: typeof row.created_at === 'string' ? row.created_at : undefined,
    deleted_at: null,
  }
}

async function attachCreatedByNames (
  rows: BackupHeaderRow[]
): Promise<EfCatalogVersionBackup[]> {
  const userIds = [...new Set(rows.map((r) => r.created_by).filter(Boolean))] as string[]
  const names = new Map<string, string>()
  if (userIds.length > 0) {
    const { data, error } = await supabase
      .from('users')
      .select('id, name, username')
      .in('id', userIds)
    if (error) throw error
    for (const user of data ?? []) {
      names.set(user.id as string, (user.name as string) || (user.username as string) || '')
    }
  }
  return rows.map((row) => ({
    id: row.id,
    source_version: row.source_version,
    fuel_count: row.fuel_count,
    created_at: row.created_at,
    created_by: row.created_by,
    created_by_name: row.created_by ? names.get(row.created_by) ?? null : null,
  }))
}

export async function listEfCatalogVersionBackups (): Promise<EfCatalogVersionBackup[]> {
  const { data, error } = await supabase
    .from('ef_catalog_version_backups')
    .select('id, source_version, fuel_count, created_at, created_by')
    .order('created_at', { ascending: false })
  if (error) throw error
  return attachCreatedByNames((data ?? []) as BackupHeaderRow[])
}

export async function getEfCatalogVersionBackup (id: string): Promise<EfCatalogVersionBackup | null> {
  const { data, error } = await supabase
    .from('ef_catalog_version_backups')
    .select('id, source_version, fuel_count, created_at, created_by')
    .eq('id', id)
    .maybeSingle()
  if (error) throw error
  if (!data) return null
  const [row] = await attachCreatedByNames([data as BackupHeaderRow])
  return row
}

async function listBackupFuels (backupId: string): Promise<Record<string, unknown>[]> {
  const all: Record<string, unknown>[] = []
  let offset = 0
  while (true) {
    const { data, error } = await supabase
      .from('ef_catalog_version_backup_fuels')
      .select('*')
      .eq('backup_id', backupId)
      .order('id', { ascending: true })
      .range(offset, offset + BACKUP_READ_CHUNK - 1)
    if (error) throw error
    const chunk = (data ?? []) as Record<string, unknown>[]
    all.push(...chunk)
    if (chunk.length < BACKUP_READ_CHUNK) break
    offset += BACKUP_READ_CHUNK
  }
  return all
}

export async function createEfCatalogVersionBackup (
  version: string,
  createdBy: string | null
): Promise<EfCatalogVersionBackup> {
  const fuels = await listFuelResourcesForExport(version)
  if (fuels.length === 0) {
    throw new Error('No active fuels to backup')
  }

  const { data: header, error: headerError } = await supabase
    .from('ef_catalog_version_backups')
    .insert({
      source_version: version,
      fuel_count: fuels.length,
      created_by: createdBy,
      created_at: new Date().toISOString(),
    })
    .select('id, source_version, fuel_count, created_at, created_by')
    .single()
  if (headerError) throw headerError

  try {
    for (let i = 0; i < fuels.length; i += BACKUP_WRITE_CHUNK) {
      const chunk = fuels.slice(i, i + BACKUP_WRITE_CHUNK).map((fuel) =>
        toBackupFuelRow(fuel, header.id)
      )
      const { error } = await supabase
        .from('ef_catalog_version_backup_fuels')
        .insert(chunk)
      if (error) throw error
    }
  } catch (error) {
    await supabase.from('ef_catalog_version_backups').delete().eq('id', header.id)
    throw error
  }

  const [row] = await attachCreatedByNames([header as BackupHeaderRow])
  return row
}

export async function restoreEfCatalogVersionBackup (
  backupId: string,
  targetVersion: string
): Promise<{ version: string; fuel_count: number }> {
  const backup = await getEfCatalogVersionBackup(backupId)
  if (!backup) throw new Error('Backup not found')

  const snapshot = await listBackupFuels(backupId)
  if (snapshot.length === 0) throw new Error('Backup has no fuels')

  const backupIds = snapshot.map((row) => String(row.id))
  const backupIdSet = new Set(backupIds)

  const [targetActiveIds, existingVersions] = await Promise.all([
    listActiveFuelIdsByVersion(targetVersion),
    listFuelVersionsByIds(backupIds),
  ])
  const extraIds = targetActiveIds.filter((id) => !backupIdSet.has(id))

  await softDeleteFuelIds(targetActiveIds)
  if (extraIds.length > 0) {
    await deleteMappingsByFuelResourceIds(extraIds)
  }

  for (let i = 0; i < snapshot.length; i += BACKUP_WRITE_CHUNK) {
    const chunk = snapshot.slice(i, i + BACKUP_WRITE_CHUNK).map((row) =>
      toLiveFuelRow(row, targetVersion)
    )
    await bulkUpsertFuelResources(chunk)
  }

  await ensureEfCatalogRelease(targetVersion)
  const versionsToRefresh = new Set<string>([targetVersion])
  for (const prior of existingVersions.values()) {
    if (prior && prior !== targetVersion) versionsToRefresh.add(prior)
  }
  for (const version of versionsToRefresh) {
    await refreshReleaseCounts(version)
  }

  return { version: targetVersion, fuel_count: snapshot.length }
}

export async function deleteEfCatalogVersionBackup (id: string): Promise<void> {
  const { error } = await supabase
    .from('ef_catalog_version_backups')
    .delete()
    .eq('id', id)
  if (error) throw error
}
