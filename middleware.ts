import { NextResponse, type NextRequest } from 'next/server';
import { config as appConfig, isMaintenanceMode } from './src/lib/config';

export function middleware (request: NextRequest) {
  // Skip for static files and Next internals
  const { pathname } = request.nextUrl;

  // Allow health check path regardless
  if (pathname === appConfig.maintenanceBypassPath) {
    return NextResponse.next();
  }

  // Allow static assets (has an extension) and Next internals
  if (
    pathname.startsWith('/_next') ||
    pathname.startsWith('/api/edge-config') ||
    pathname.includes('.')
  ) {
    return NextResponse.next();
  }

  // Allow maintenance page itself to render
  if (pathname.startsWith('/under-construction')) {
    return NextResponse.next();
  }

  // Allow API routes (they handle their own routing)
  if (pathname.startsWith('/api/')) {
    return NextResponse.next();
  }

  if (isMaintenanceMode()) {
    const url = request.nextUrl.clone();
    url.pathname = '/under-construction';
    url.search = '';
    return NextResponse.rewrite(url);
  }

  return NextResponse.next();
}

export const config = {
  matcher: ['/((?!_next).*)'],
};


















