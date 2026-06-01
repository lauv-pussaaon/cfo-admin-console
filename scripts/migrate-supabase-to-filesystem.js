/* eslint-disable no-console */
/**
 * Migrate admin console files from Supabase Storage to local filesystem.
 *
 * Prerequisites:
 * - NEXT_PUBLIC_SUPABASE_URL or SUPABASE_URL
 * - SUPABASE_SERVICE_ROLE_KEY
 * - UPLOAD_DIR (e.g. /var/cfo-admin-uploads)
 *
 * Run: UPLOAD_DIR=/var/cfo-admin-uploads node scripts/migrate-supabase-to-filesystem.js
 * Options: --dry-run, --bucket=name
 */

const { createClient } = require('@supabase/supabase-js')
const fs = require('fs')
const path = require('path')

function loadEnvFile () {
  for (const name of ['.env.local', '.env']) {
    const envPath = path.join(process.cwd(), name)
    if (!fs.existsSync(envPath)) continue
    fs.readFileSync(envPath, 'utf8').split('\n').forEach((line) => {
      const match = line.match(/^([^=:#]+)=(.*)$/)
      if (match) {
        const key = match[1].trim()
        const value = match[2].trim().replace(/^["']|["']$/g, '')
        if (key && !process.env[key]) process.env[key] = value
      }
    })
  }
}

loadEnvFile()

const BUCKET_TO_SUBDIR = {
  'cfo-emission-template-images': 'template-images',
  'cfo-support-chat-attachments': 'support-attachments',
  'cfo-user-avatar': 'avatars',
  'cfo-report-chat-documents': 'chat-documents',
  'cfo-ef-certificates': 'ef-certificates',
}

const STORAGE_PREFIX = 'admin'
const UPLOAD_DIR = process.env.UPLOAD_DIR
const supabaseUrl = process.env.SUPABASE_URL || process.env.NEXT_PUBLIC_SUPABASE_URL
const serviceKey = process.env.SUPABASE_SERVICE_ROLE_KEY

const dryRun = process.argv.includes('--dry-run')
const bucketArg = process.argv.find((a) => a.startsWith('--bucket='))
const onlyBucket = bucketArg ? bucketArg.split('=')[1] : null

async function listFiles (supabase, bucket, prefix = '') {
  const { data, error } = await supabase.storage.from(bucket).list(prefix, { limit: 1000 })
  if (error) throw error
  const files = []
  for (const item of data || []) {
    const full = prefix ? `${prefix}/${item.name}` : item.name
    if (item.id) {
      files.push(full)
    } else {
      files.push(...(await listFiles(supabase, bucket, full)))
    }
  }
  return files
}

async function main () {
  if (!UPLOAD_DIR) {
    console.error('UPLOAD_DIR is required')
    process.exit(1)
  }
  if (!supabaseUrl || !serviceKey) {
    console.error('SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY are required')
    process.exit(1)
  }

  const supabase = createClient(supabaseUrl, serviceKey)
  const buckets = onlyBucket ? [onlyBucket] : Object.keys(BUCKET_TO_SUBDIR)

  for (const bucket of buckets) {
    const subdir = BUCKET_TO_SUBDIR[bucket]
    if (!subdir) {
      console.warn(`Skipping unknown bucket: ${bucket}`)
      continue
    }
    console.log(`\n==> Bucket: ${bucket} -> ${subdir}`)
    const files = await listFiles(supabase, bucket)
    console.log(`    Found ${files.length} files`)

    for (const filePath of files) {
      const dest = path.join(UPLOAD_DIR, STORAGE_PREFIX, subdir, filePath)
      if (dryRun) {
        console.log(`    [dry-run] ${filePath} -> ${dest}`)
        continue
      }
      const { data, error } = await supabase.storage.from(bucket).download(filePath)
      if (error) {
        console.error(`    Failed ${filePath}:`, error.message)
        continue
      }
      const buf = Buffer.from(await data.arrayBuffer())
      fs.mkdirSync(path.dirname(dest), { recursive: true })
      fs.writeFileSync(dest, buf)
      console.log(`    Saved ${filePath}`)
    }
  }

  console.log('\n==> Migration complete')
}

main().catch((err) => {
  console.error(err)
  process.exit(1)
})
