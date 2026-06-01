/**
 * Custom error classes for better error handling
 * Expected errors won't trigger console.error automatically
 */

export class AppError extends Error {
  constructor(
    message: string,
    public code?: string,
    public statusCode?: number,
    public isExpected = false
  ) {
    super(message)
    this.name = 'AppError'
    
    // For expected errors, suppress stack trace to reduce console noise
    if (isExpected) {
      // Remove stack trace for cleaner error messages
      if (Error.captureStackTrace) {
        Error.captureStackTrace(this, AppError)
      }
    }
  }
  
  // Override toString to prevent default error logging for expected errors
  toString() {
    return this.message
  }
}

export class ValidationError extends AppError {
  constructor(message: string) {
    super(message, 'VALIDATION_ERROR', 400, true)
    this.name = 'ValidationError'
  }
}

export class NotFoundError extends AppError {
  constructor(message: string = 'Resource not found') {
    super(message, 'NOT_FOUND', 404, true)
    this.name = 'NotFoundError'
  }
}

export class ConflictError extends AppError {
  constructor(message: string) {
    super(message, 'CONFLICT', 409, true)
    this.name = 'ConflictError'
  }
}

/**
 * Converts database errors (PostgreSQL / legacy PostgREST codes) to AppError.
 * Expected errors (validation, not found, etc.) won't log to console.
 */
export function handleSupabaseError(error: unknown): never {
  if (error instanceof AppError) {
    throw error
  }

  if (error && typeof error === 'object' && 'code' in error && 'message' in error) {
    const dbError = error as { code: string; message: string; details?: string; hint?: string }

    switch (dbError.code) {
      case 'PGRST116':
      case '42P01':
        throw new NotFoundError(dbError.message)
      case '23505':
        throw new ConflictError(dbError.message || 'Resource already exists')
      case '23503':
        throw new ValidationError(dbError.message || 'Invalid reference')
      default: {
        const isNetworkError =
          dbError.message?.includes('fetch') ||
          dbError.message?.includes('CORS') ||
          dbError.message?.includes('Failed to fetch') ||
          dbError.code === 'NETWORK_ERROR'

        throw new AppError(
          dbError.message || 'An unexpected error occurred',
          dbError.code,
          undefined,
          isNetworkError
        )
      }
    }
  }

  // Handle standard Error objects
  if (error instanceof Error) {
    // Check if it's a network/CORS error
    const isNetworkError = 
      error.message.includes('fetch') ||
      error.message.includes('CORS') ||
      error.message.includes('Failed to fetch') ||
      error.name === 'TypeError' && error.message.includes('fetch')
    
    throw new AppError(
      error.message, 
      undefined, 
      undefined, 
      isNetworkError // Network errors are expected - user should see them
    )
  }

  // Handle unknown error types
  throw new AppError('An unknown error occurred', undefined, undefined, false)
}

/**
 * Wraps an async function to handle errors gracefully
 * Only logs unexpected errors to console
 * Expected errors (ValidationError, NotFoundError, etc.) won't be logged
 */
export async function handleError<T>(
  fn: () => Promise<T>,
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  defaultMessage: string = 'An error occurred'
): Promise<T> {
  try {
    return await fn()
  } catch (error) {
    // Only log unexpected errors - expected errors are user-facing and shouldn't clutter console
    if (error instanceof AppError) {
      if (!error.isExpected) {
        // Only log unexpected AppErrors
        console.error('Unexpected error:', error)
      }
      // Expected errors are silently re-thrown (no console logging)
    } else {
      // Unknown error types should be logged
      console.error('Unknown error:', error)
    }
    throw error
  }
}

/**
 * Checks if an error is expected (user-facing validation/not found errors)
 * Use this in components to decide whether to log errors
 */
export function isExpectedError(error: unknown): boolean {
  return error instanceof AppError && error.isExpected
}

/**
 * Helper to check and throw Supabase errors
 * Suppresses console errors for expected errors
 */
export function throwIfError<T>(result: { data: T | null; error: unknown }): T {
  if (result.error) {
    handleSupabaseError(result.error)
  }
  if (result.data === null) {
    throw new NotFoundError('Resource not found')
  }
  return result.data
}

