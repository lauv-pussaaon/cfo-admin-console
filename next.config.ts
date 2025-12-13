import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  // Disable trailing slash redirects to prevent CORS preflight issues
  // API routes should not redirect, especially for OPTIONS requests
  trailingSlash: false,
  // Ensure API routes are not affected by redirects
  async redirects () {
    return [];
  },
};

export default nextConfig;
