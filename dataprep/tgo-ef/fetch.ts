/**
 * Fetch emission factors from TGO Thai Carbon Label gateway API.
 *
 * Usage (from cfo-admin-console):
 *   pnpm tgo-ef:fetch
 *   pnpm tgo-ef:fetch -- CFO
 *   pnpm tgo-ef:fetch -- CFP
 *
 * Writes dataprep/tgo-ef/raw/tgo-ef-cfo.json and/or tgo-ef-cfp.json
 *
 * Env: TGO_EF_REQ_TOKEN
 */

import fs from 'node:fs/promises'
import path from 'node:path'

const ROOT = process.cwd()
const RAW_DIR = path.join(ROOT, 'dataprep/tgo-ef/raw')

const DEFAULT_REQ_TOKEN = '645f5a9eca99ba127f9f299058e0355f6cc1ced4c999299c3e61b94c125cd678'
const REQ_TOKEN = process.env.TGO_EF_REQ_TOKEN?.trim() || DEFAULT_REQ_TOKEN
const API_URL = 'https://thaicarbonlabel.tgo.or.th/gateway/'

type EfLabel = 'CFP' | 'CFO'

type EfResponseBase = {
  resCode: string
  resMsg: string
}

type EfSuccessResponse<T> = EfResponseBase & {
  resTotalRecord: number
  resData: T[]
}

const RESPONSE_CODES: Record<string, string> = {
  '00': 'Request Success',
  '01': 'Token not found or Invalid Token',
  '02': 'Modules not found',
  '03': 'Invalid Configuration',
  '04': 'Record not found',
  '05': 'Technical error',
}

async function fetchEmissionFactors<T> (label: EfLabel): Promise<EfSuccessResponse<T>> {
  if (!REQ_TOKEN || REQ_TOKEN === 'YOUR_TGO_PARTNER_TOKEN') {
    throw new Error('Set TGO_EF_REQ_TOKEN in .env.local before calling the API.')
  }

  const response = await fetch(API_URL, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json; charset=utf-8',
      Accept: 'application/json',
    },
    body: JSON.stringify({
      reqToken: REQ_TOKEN,
      reqMod: 'EF',
      reqLabel: label,
    }),
  })

  if (!response.ok) {
    throw new Error(`HTTP ${response.status} ${response.statusText}`)
  }

  const payload = (await response.json()) as EfResponseBase | EfSuccessResponse<T>
  if (payload.resCode !== '00') {
    const meaning = RESPONSE_CODES[payload.resCode] ?? 'Unknown error'
    throw new Error(`API error ${payload.resCode}: ${payload.resMsg} (${meaning})`)
  }

  return payload as EfSuccessResponse<T>
}

function parseLabels (argv: string[]): EfLabel[] {
  const args = argv.filter((arg) => arg !== '--')
  const labels = args.filter((arg): arg is EfLabel => arg === 'CFP' || arg === 'CFO')
  return labels.length > 0 ? labels : ['CFO', 'CFP']
}

async function main () {
  const labels = parseLabels(process.argv.slice(2))
  await fs.mkdir(RAW_DIR, { recursive: true })

  for (const label of labels) {
    console.log(`Fetching TGO emission factors (${label})...`)
    const result = await fetchEmissionFactors(label)
    console.log(`${result.resMsg} — ${result.resTotalRecord} record(s)`)
    const outPath = path.join(RAW_DIR, `tgo-ef-${label.toLowerCase()}.json`)
    await fs.writeFile(outPath, JSON.stringify(result, null, 2), 'utf8')
    console.log(`Saved to ${outPath}`)
  }
}

main().catch((error: unknown) => {
  const message = error instanceof Error ? error.message : String(error)
  console.error(`Failed to fetch TGO EF data: ${message}`)
  process.exitCode = 1
})
