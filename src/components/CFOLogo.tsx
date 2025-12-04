'use client'

import { Box } from '@mui/material'

interface CFOLogoProps {
  size?: number
  color?: string
}

export default function CFOLogo({ size = 40, color = '#10b981' }: CFOLogoProps) {
  return (
    <Box
      sx={{
        width: size,
        height: size,
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        borderRadius: '12px',
        backgroundColor: color,
        position: 'relative',
        overflow: 'hidden',
        boxShadow: '0 4px 12px rgba(16, 185, 129, 0.3)',
      }}
    >
      <svg
        width={size * 0.7}
        height={size * 0.7}
        viewBox="0 0 24 24"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
      >
        {/* Light bulb with leaf - Ideas for carbon reduction */}
        
        {/* Light bulb base/screw */}
        <rect
          x="10"
          y="18"
          width="4"
          height="4"
          rx="1"
          fill="white"
          fillOpacity="0.8"
        />
        
        {/* Light bulb body */}
        <circle
          cx="12"
          cy="12"
          r="6"
          fill="white"
          fillOpacity="0.9"
        />
        
        {/* Light bulb filament */}
        <path
          d="M9 9C9 9 10 10 12 10C14 10 15 9 15 9M9 12C9 12 10 11 12 11C14 11 15 12 15 12M9 15C9 15 10 14 12 14C14 14 15 15 15 15"
          stroke="white"
          strokeWidth="0.8"
          strokeLinecap="round"
          strokeOpacity="0.7"
        />
        
        {/* Small leaf inside the bulb */}
        <path
          d="M12 8C12 8 10.5 9.5 10.5 11C10.5 11.5 11 12 11.5 12C12 12 12.5 11.5 12.5 11C12.5 9.5 12 8 12 8Z"
          fill="white"
          fillOpacity="0.6"
        />
        
        {/* Leaf details */}
        <path
          d="M11.5 9.5L12.5 9.5M11.5 10.5L12.5 10.5"
          stroke="white"
          strokeWidth="0.3"
          strokeLinecap="round"
          strokeOpacity="0.8"
        />
        
        {/* Light rays/glow effect */}
        <path
          d="M6 6L8 8M18 6L16 8M6 18L8 16M18 18L16 16M3 12L5 12M21 12L19 12"
          stroke="white"
          strokeWidth="0.4"
          strokeLinecap="round"
          strokeOpacity="0.4"
        />
      </svg>
    </Box>
  )
}
