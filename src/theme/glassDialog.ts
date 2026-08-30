import type { Components, Theme } from '@mui/material/styles'
import { alpha } from '@mui/material/styles'

export function getDialogChromeHeaderSx (theme: Theme) {
  const isDark = theme.palette.mode === 'dark'
  const glassStrip = alpha('#ffffff', isDark ? 0.06 : 0.1)
  const glassStripStrong = alpha('#ffffff', isDark ? 0.1 : 0.14)
  return {
    background: `linear-gradient(180deg, ${glassStripStrong} 0%, ${glassStrip} 100%)`,
    boxShadow: `inset 0 1px 0 ${alpha('#ffffff', isDark ? 0.12 : 0.35)}`,
    borderBottom: `1px solid ${alpha(theme.palette.divider, 0.45)}`,
  }
}

export function getDialogChromeFooterSx (theme: Theme) {
  const isDark = theme.palette.mode === 'dark'
  const glassStrip = alpha('#ffffff', isDark ? 0.06 : 0.1)
  const glassStripStrong = alpha('#ffffff', isDark ? 0.1 : 0.14)
  return {
    background: `linear-gradient(0deg, ${glassStripStrong} 0%, ${glassStrip} 100%)`,
    boxShadow: `inset 0 -1px 0 ${alpha('#ffffff', isDark ? 0.08 : 0.25)}`,
    borderTop: `1px solid ${alpha(theme.palette.divider, 0.45)}`,
  }
}

export function getGlassInsetPanelSx (theme: Theme) {
  const isDark = theme.palette.mode === 'dark'
  return {
    backgroundColor: alpha(theme.palette.background.paper, isDark ? 0.42 : 0.62),
    border: `1px solid ${alpha(theme.palette.divider, 0.4)}`,
    borderRadius: 1,
  }
}

export function getGlassModalScrollbarSx (theme: Theme) {
  const isDark = theme.palette.mode === 'dark'
  return {
    '&::-webkit-scrollbar': { width: 8 },
    '&::-webkit-scrollbar-track': {
      backgroundColor: alpha(theme.palette.background.paper, isDark ? 0.25 : 0.4),
      borderRadius: 4,
    },
    '&::-webkit-scrollbar-thumb': {
      backgroundColor: alpha(theme.palette.primary.main, isDark ? 0.35 : 0.28),
      borderRadius: 4,
      border: `2px solid ${alpha(theme.palette.background.paper, 0.1)}`,
    },
  }
}

export interface GlassDialogThemeParams {
  isDark: boolean
  primaryMain: string
  backgroundPaper: string
  divider: string
}

export function getGlassDialogComponentStyles (
  params: GlassDialogThemeParams
): Pick<Components, 'MuiDialog' | 'MuiDialogTitle' | 'MuiDialogContent' | 'MuiDialogActions'> {
  const { isDark, primaryMain, backgroundPaper, divider } = params
  const glassEdge = isDark ? alpha('#ffffff', 0.14) : alpha(primaryMain, 0.22)
  const glassStrip = alpha('#ffffff', isDark ? 0.06 : 0.1)
  const glassStripStrong = alpha('#ffffff', isDark ? 0.1 : 0.14)

  return {
    MuiDialog: {
      defaultProps: {
        BackdropProps: {
          sx: {
            backgroundColor: alpha('#000000', isDark ? 0.62 : 0.48),
          },
        },
      },
      styleOverrides: {
        paper: {
          borderRadius: 16,
          overflow: 'hidden',
          display: 'flex',
          flexDirection: 'column',
          backgroundImage: 'none',
          background: alpha(backgroundPaper, isDark ? 0.96 : 0.98),
          border: `1px solid ${glassEdge}`,
          boxShadow: isDark
            ? `0 24px 48px ${alpha('#000000', 0.45)}`
            : `0 16px 40px ${alpha('#0f172a', 0.1)}`,
        },
      },
    },
    MuiDialogContent: {
      styleOverrides: {
        root: {
          backgroundColor: 'transparent',
          backgroundImage: 'none',
        },
      },
    },
    MuiDialogTitle: {
      styleOverrides: {
        root: {
          padding: '24px 24px 16px',
          fontSize: '1.25rem',
          fontWeight: 600,
          background: `linear-gradient(180deg, ${glassStripStrong} 0%, ${glassStrip} 100%)`,
          boxShadow: `inset 0 1px 0 ${alpha('#ffffff', isDark ? 0.12 : 0.35)}`,
          borderBottom: `1px solid ${alpha(divider, 0.45)}`,
        },
      },
    },
    MuiDialogActions: {
      styleOverrides: {
        root: {
          background: `linear-gradient(0deg, ${glassStripStrong} 0%, ${glassStrip} 100%)`,
          boxShadow: `inset 0 -1px 0 ${alpha('#ffffff', isDark ? 0.08 : 0.25)}`,
          borderTop: `1px solid ${alpha(divider, 0.45)}`,
        },
      },
    },
  }
}
