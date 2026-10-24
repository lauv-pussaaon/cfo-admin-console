import { readFileSync } from 'node:fs'
import path from 'node:path'
import { createClient } from '@supabase/supabase-js'

const UPDATE_ID = 'c2e02000-0006-4000-8000-000000002000'
const OBJECT_PATH = `${UPDATE_ID}/banner.png`
const BUCKET = 'platform-updates'

const root = process.cwd()
const bannerPath = path.join(root, 'database/seeds/platform-updates/v2.0.0-banner.png')

function loadEnvFile (filePath: string) {
  let text = ''
  try {
    text = readFileSync(filePath, 'utf8')
  } catch {
    return
  }
  for (const line of text.split('\n')) {
    const trimmed = line.trim()
    if (!trimmed || trimmed.startsWith('#')) continue
    const eq = trimmed.indexOf('=')
    if (eq < 1) continue
    const key = trimmed.slice(0, eq).trim()
    let value = trimmed.slice(eq + 1).trim()
    if (
      (value.startsWith('"') && value.endsWith('"')) ||
      (value.startsWith("'") && value.endsWith("'"))
    ) {
      value = value.slice(1, -1)
    }
    if (process.env[key] === undefined) process.env[key] = value
  }
}

async function main () {
  loadEnvFile(path.join(root, '.env.local'))
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL?.trim()
  const key = process.env.SUPABASE_SERVICE_ROLE_KEY?.trim()
  if (!url || !key) {
    console.error('ตั้งค่า NEXT_PUBLIC_SUPABASE_URL และ SUPABASE_SERVICE_ROLE_KEY ใน .env.local')
    process.exit(1)
  }

  const bytes = readFileSync(bannerPath)
  const client = createClient(url, key, {
    auth: { persistSession: false, autoRefreshToken: false },
  })
  const { error } = await client.storage.from(BUCKET).upload(OBJECT_PATH, bytes, {
    contentType: 'image/png',
    upsert: true,
    cacheControl: '3600',
  })
  if (error) {
    console.error(error.message)
    process.exit(1)
  }

  const { data } = client.storage.from(BUCKET).getPublicUrl(OBJECT_PATH)
  console.log(data.publicUrl)
}

void main()
