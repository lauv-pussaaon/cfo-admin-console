import { Pool, type PoolClient, type QueryResultRow } from 'pg'

/**
 * PostgreSQL connection pool for server-side use.
 * Lazy-init so build/import does not require DATABASE_URL until first query.
 * Use in API routes only — never in client components.
 */

let pool: Pool | null = null

function getPool (): Pool {
  if (!pool) {
    const connectionString = process.env.DATABASE_URL
    if (!connectionString) {
      throw new Error('DATABASE_URL environment variable is required')
    }
    pool = new Pool({
      connectionString,
      max: 10,
      idleTimeoutMillis: 30000,
      connectionTimeoutMillis: 2000,
    })
  }
  return pool
}

export interface QueryResult<T = unknown> {
  rows: T[]
  rowCount: number | null
}

export async function query<T extends QueryResultRow = Record<string, unknown>>(
  text: string,
  params?: unknown[]
): Promise<QueryResult<T>> {
  const client = await getPool().connect()
  try {
    const result = await client.query<T>(text, params)
    return { rows: result.rows, rowCount: result.rowCount }
  } finally {
    client.release()
  }
}

export async function queryOne<T extends QueryResultRow = Record<string, unknown>>(
  text: string,
  params?: unknown[]
): Promise<T | null> {
  const { rows } = await query<T>(text, params)
  return rows[0] ?? null
}

/**
 * Run multiple queries in a transaction. Use client.query() for all DB ops inside fn.
 * Automatically commits on success, rolls back on error.
 */
export async function withTransaction<T>(
  fn: (client: PoolClient) => Promise<T>
): Promise<T> {
  const client = await getPool().connect()
  try {
    await client.query('BEGIN')
    const result = await fn(client)
    await client.query('COMMIT')
    return result
  } catch (e) {
    await client.query('ROLLBACK')
    throw e
  } finally {
    client.release()
  }
}

export const db = { query, queryOne, withTransaction }
