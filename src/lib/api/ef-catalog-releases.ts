import { createHash } from 'node:crypto'
import { supabase } from '@/lib/supabase'
import type { EfCatalogRelease } from '@/types/emission-resources'

export async function listEfCatalogReleases (): Promise<EfCatalogRelease[]> {
  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .select('*')
    .order('version', { ascending: true })
  if (error) throw error
  return (data ?? []) as EfCatalogRelease[]
}

export async function getEfCatalogRelease (version: string): Promise<EfCatalogRelease | null> {
  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .select('*')
    .eq('version', version)
    .maybeSingle()
  if (error) throw error
  return data as EfCatalogRelease | null
}

export async function ensureEfCatalogRelease (version: string): Promise<EfCatalogRelease> {
  const existing = await getEfCatalogRelease(version)
  if (existing) return existing
  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .insert({
      version,
      status: 'draft',
      is_default: false,
      fuel_count: 0,
      link_count: 0,
      updated_at: new Date().toISOString(),
    })
    .select()
    .single()
  if (error) throw error
  return data as EfCatalogRelease
}

async function countFuels (version: string): Promise<number> {
  const { count, error } = await supabase
    .from('fuel_resources')
    .select('id', { count: 'exact', head: true })
    .eq('version', version)
    .is('deleted_at', null)
  if (error) throw error
  return count ?? 0
}

async function countLinks (version: string): Promise<number> {
  const { count, error } = await supabase
    .from('fuel_resources_linking')
    .select('id', { count: 'exact', head: true })
    .eq('version', version)
  if (error) throw error
  return count ?? 0
}

export async function computeReleaseContentHash (version: string): Promise<string> {
  const [{ data: fuels, error: fuelErr }, { data: links, error: linkErr }] = await Promise.all([
    supabase
      .from('fuel_resources')
      .select('id, ef_value')
      .eq('version', version)
      .is('deleted_at', null)
      .order('id', { ascending: true }),
    supabase
      .from('fuel_resources_linking')
      .select('source_fuel_id, dest_fuel_id, unit_conversion_factor')
      .eq('version', version)
      .order('source_fuel_id', { ascending: true })
      .order('dest_fuel_id', { ascending: true }),
  ])
  if (fuelErr) throw fuelErr
  if (linkErr) throw linkErr

  const fuelPart = (fuels ?? [])
    .map((f) => `${f.id}:${f.ef_value ?? ''}`)
    .join('|')
  const linkPart = (links ?? [])
    .map((l) => `${l.source_fuel_id}>${l.dest_fuel_id}:${l.unit_conversion_factor}`)
    .join('|')
  return createHash('sha256').update(`${version}\n${fuelPart}\n${linkPart}`).digest('hex')
}

export async function refreshReleaseCounts (version: string): Promise<EfCatalogRelease> {
  await ensureEfCatalogRelease(version)
  const [fuel_count, link_count] = await Promise.all([
    countFuels(version),
    countLinks(version),
  ])
  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .update({
      fuel_count,
      link_count,
      updated_at: new Date().toISOString(),
    })
    .eq('version', version)
    .select()
    .single()
  if (error) throw error
  return data as EfCatalogRelease
}

export async function publishEfCatalogRelease (
  version: string,
  publishedBy?: string | null
): Promise<EfCatalogRelease> {
  await ensureEfCatalogRelease(version)
  const [fuel_count, link_count, content_hash] = await Promise.all([
    countFuels(version),
    countLinks(version),
    computeReleaseContentHash(version),
  ])
  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .update({
      status: 'published',
      content_hash,
      fuel_count,
      link_count,
      published_at: new Date().toISOString(),
      published_by: publishedBy ?? null,
      updated_at: new Date().toISOString(),
    })
    .eq('version', version)
    .select()
    .single()
  if (error) throw error
  return data as EfCatalogRelease
}

export async function setDefaultEfCatalogRelease (version: string): Promise<EfCatalogRelease> {
  const release = await getEfCatalogRelease(version)
  if (!release) throw new Error(`Unknown release version: ${version}`)
  if (release.status !== 'published') {
    throw new Error('Only published releases can be set as default')
  }

  // Clear other defaults first (unique partial index).
  const { error: clearErr } = await supabase
    .from('ef_catalog_releases')
    .update({ is_default: false, updated_at: new Date().toISOString() })
    .eq('is_default', true)
  if (clearErr) throw clearErr

  const { data, error } = await supabase
    .from('ef_catalog_releases')
    .update({ is_default: true, updated_at: new Date().toISOString() })
    .eq('version', version)
    .select()
    .single()
  if (error) throw error
  return data as EfCatalogRelease
}
