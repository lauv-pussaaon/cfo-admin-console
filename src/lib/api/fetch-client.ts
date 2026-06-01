/**
 * Client-side fetch wrapper that automatically adds admin authentication headers
 * and handles errors consistently.
 */

/**
 * Fetch wrapper that adds x-admin-user-id header from localStorage (cfo_user_id).
 */
export async function authenticatedFetch (
  url: string,
  options: RequestInit = {}
): Promise<Response> {
  const userId = typeof window !== 'undefined' ? localStorage.getItem('cfo_user_id') : null

  const headers = new Headers(options.headers)
  if (userId) {
    headers.set('x-admin-user-id', userId)
  }

  const mergedOptions: RequestInit = {
    ...options,
    headers,
  }

  const response = await fetch(url, mergedOptions)

  if (!response.ok) {
    let errorMessage = 'Request failed'
    try {
      const errorData = await response.json()
      const raw = errorData?.error ?? errorMessage
      errorMessage =
        typeof raw === 'string'
          ? raw
          : raw != null
            ? JSON.stringify(raw)
            : errorMessage
    } catch {
      errorMessage = response.statusText || `HTTP ${response.status}`
    }

    if (response.status === 401) {
      if (typeof window !== 'undefined') {
        localStorage.removeItem('cfo_user_id')
        window.location.href = '/login'
      }
    }

    throw new Error(errorMessage)
  }

  return response
}

/**
 * Fetch and parse JSON response.
 * Returns undefined for 204 No Content.
 */
export async function fetchJson<T> (url: string, options: RequestInit = {}): Promise<T> {
  const response = await authenticatedFetch(url, {
    ...options,
    headers: {
      'Content-Type': 'application/json',
      ...options.headers,
    },
  })
  if (response.status === 204) {
    return undefined as T
  }
  return response.json()
}
