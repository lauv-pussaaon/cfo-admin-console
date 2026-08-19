export async function authenticatedAdminFetch (
  input: string,
  init: RequestInit = {},
  options?: { userId?: string | null }
): Promise<Response> {
  const userId =
    options?.userId?.trim() ||
    (typeof window !== 'undefined' ? localStorage.getItem('cfo_user_id') : null)
  const headers = new Headers(init.headers)

  if (userId) {
    headers.set('x-admin-user-id', userId)
  }

  const response = await fetch(input, {
    ...init,
    headers,
  })

  return response
}

