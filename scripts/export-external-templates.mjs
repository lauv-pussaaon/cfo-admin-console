#!/usr/bin/env node

import { mkdir, writeFile } from 'node:fs/promises'
import { dirname, resolve } from 'node:path'

function parseArgs(argv) {
  const args = {
    baseUrl: process.env.EXPORT_BASE_URL || 'http://localhost:3000',
    output: 'dataprep/external-templates.json',
    industry_code: undefined,
    is_active: undefined,
  }

  for (let i = 0; i < argv.length; i += 1) {
    const token = argv[i]

    if (token === '--base-url') {
      args.baseUrl = argv[i + 1]
      i += 1
      continue
    }

    if (token === '--output') {
      args.output = argv[i + 1]
      i += 1
      continue
    }

    if (token === '--industry-code') {
      args.industry_code = argv[i + 1]
      i += 1
      continue
    }

    if (token === '--is-active') {
      args.is_active = argv[i + 1]
      i += 1
    }
  }

  return args
}

function buildUrl({ baseUrl, industry_code, is_active }) {
  const url = new URL('/api/external/templates', baseUrl)

  if (industry_code) {
    url.searchParams.set('industry_code', industry_code)
  }

  if (typeof is_active === 'string') {
    url.searchParams.set('is_active', is_active)
  }

  return url
}

async function main() {
  const args = parseArgs(process.argv.slice(2))
  const url = buildUrl(args)

  const response = await fetch(url, {
    headers: {
      accept: 'application/json',
    },
  })

  if (!response.ok) {
    const text = await response.text()
    throw new Error(`Request failed (${response.status}): ${text}`)
  }

  const body = await response.json()
  const outputPath = resolve(process.cwd(), args.output)

  await mkdir(dirname(outputPath), { recursive: true })
  await writeFile(outputPath, `${JSON.stringify(body, null, 2)}\n`, 'utf8')

  console.log(`Exported templates JSON to ${outputPath}`)
  console.log(`Source URL: ${url.toString()}`)
}

main().catch((error) => {
  console.error('Failed to export external templates:', error)
  process.exit(1)
})
