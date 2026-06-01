import { NextResponse } from 'next/server'
import { ValidationError, NotFoundError, AppError } from '@/lib/utils/errors'

/**
 * Create a success JSON response
 */
export function jsonResponse<T> (
  data: T,
  status: number = 200,
  headers?: HeadersInit
): NextResponse {
  return NextResponse.json(data, { status, headers })
}

/**
 * Create an error JSON response
 */
export function errorResponse (message: string, status: number = 500, code?: string): NextResponse {
  return NextResponse.json(
    { error: message, code },
    { status }
  )
}

/**
 * Handle errors and return appropriate HTTP response
 * Converts AppError to HTTP status codes
 */
export function handleApiError (error: unknown): NextResponse {
  if (error instanceof ValidationError) {
    return errorResponse(error.message, 400, 'VALIDATION_ERROR')
  }

  if (error instanceof NotFoundError) {
    return errorResponse(error.message, 404, 'NOT_FOUND')
  }

  if (error instanceof AppError) {
    return errorResponse(
      error.message,
      error.statusCode || 500,
      error.code
    )
  }

  // Handle database errors
  if (error && typeof error === 'object' && 'code' in error && 'message' in error) {
    const dbError = error as { code: string; message: string }

    switch (dbError.code) {
      case 'PGRST116':
      case '42P01':
        return errorResponse('Resource not found', 404, 'NOT_FOUND')
      case '23505':
        return errorResponse('Resource already exists', 409, 'CONFLICT')
      case '23503':
        return errorResponse('Invalid reference', 400, 'VALIDATION_ERROR')
      default:
        return errorResponse(dbError.message || 'Database error', 500, dbError.code)
    }
  }

  // Unauthorized - return 401 so client can redirect to login
  if (error instanceof Error && error.message === 'Unauthorized') {
    return errorResponse('Unauthorized', 401, 'UNAUTHORIZED')
  }

  // Unknown error
  if (error instanceof Error) {
    return errorResponse(error.message, 500)
  }

  return errorResponse('An unknown error occurred', 500)
}

/**
 * Wrap an async route handler with error handling
 */
export function withErrorHandling (
  handler: (request: any, context?: any) => Promise<NextResponse>
) {
  return async (request: any, context?: any): Promise<NextResponse> => {
    try {
      return await handler(request, context)
    } catch (error) {
      return handleApiError(error)
    }
  }
}
