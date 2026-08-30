'use client'

import { alpha, createTheme, ThemeProvider } from '@mui/material/styles'
import CssBaseline from '@mui/material/CssBaseline'
import { ReactNode, useMemo, useEffect, useState, createContext, useContext } from 'react'
import { getGlassDialogComponentStyles } from '@/theme/glassDialog'
import { BASE_HTML_FONT_SIZE } from '@/theme/base-font'
import { FONT_FAMILY } from '@/theme/fonts'
import {
  ACCENT_GRADIENT,
  DEFAULT_PRIMARY,
  DEFAULT_SECONDARY,
  LIGHT_CARD_SHADOW,
  SURFACE_ELEVATED_LIGHT,
} from '@/theme/tokens'

type ThemeMode = 'light' | 'dark'

interface ThemeModeContextType {
  mode: ThemeMode
  toggleThemeMode: () => void
}

const ThemeModeContext = createContext<ThemeModeContextType>({
  mode: 'light',
  toggleThemeMode: () => {},
})

export const useThemeMode = () => useContext(ThemeModeContext)

const createAppTheme = (mode: ThemeMode) => {
  const isDark = mode === 'dark'
  const primaryMain = DEFAULT_PRIMARY.main

  return createTheme({
    palette: {
      mode,
      primary: {
        main: primaryMain,
        light: DEFAULT_PRIMARY.light,
        dark: DEFAULT_PRIMARY.dark,
        contrastText: '#ffffff',
      },
      secondary: {
        main: DEFAULT_SECONDARY,
        light: isDark ? '#93c5fd' : '#60a5fa',
        dark: isDark ? '#3b82f6' : '#2563eb',
        contrastText: '#ffffff',
      },
      success: {
        main: '#10b981',
        light: '#34d399',
        dark: '#059669',
      },
      warning: {
        main: '#f59e0b',
        light: '#fbbf24',
        dark: '#d97706',
      },
      error: {
        main: '#ef4444',
        light: '#f87171',
        dark: '#dc2626',
      },
      info: {
        main: '#3b82f6',
        light: '#60a5fa',
        dark: '#2563eb',
      },
      background: {
        default: isDark ? '#050B14' : '#f8fafc',
        paper: isDark ? '#0B1221' : '#ffffff',
      },
      text: {
        primary: isDark ? '#ffffff' : '#0f172a',
        secondary: isDark ? '#94a3b8' : '#64748b',
      },
      divider: isDark ? 'rgba(255, 255, 255, 0.08)' : '#e2e8f0',
      grey: {
        50: isDark ? '#0B1221' : '#f8fafc',
        100: isDark ? '#111827' : '#f1f5f9',
        200: isDark ? '#1f2937' : '#e2e8f0',
        300: isDark ? '#374151' : '#cbd5e1',
        400: isDark ? '#4b5563' : '#94a3b8',
        500: isDark ? '#6b7280' : '#64748b',
        600: isDark ? '#9ca3af' : '#475569',
        700: isDark ? '#d1d5db' : '#334155',
        800: isDark ? '#e5e7eb' : '#1e293b',
        900: isDark ? '#f3f4f6' : '#0f172a',
      },
    },
    typography: {
      htmlFontSize: BASE_HTML_FONT_SIZE,
      fontFamily: FONT_FAMILY,
      h1: {
        fontWeight: 600,
        fontSize: '2.5rem',
        lineHeight: 1.2,
        letterSpacing: '-0.03em',
      },
      h2: {
        fontWeight: 600,
        fontSize: '2rem',
        lineHeight: 1.3,
        letterSpacing: '-0.02em',
      },
      h3: {
        fontWeight: 600,
        fontSize: '1.5rem',
        lineHeight: 1.4,
        letterSpacing: '-0.02em',
      },
      h4: { fontWeight: 600, fontSize: '1.25rem', lineHeight: 1.4, letterSpacing: '-0.01em' },
      h5: { fontWeight: 600, fontSize: '1.125rem', lineHeight: 1.4, letterSpacing: '-0.01em' },
      h6: { fontWeight: 600, fontSize: '1rem', lineHeight: 1.4 },
      subtitle1: { fontWeight: 500, fontSize: '1rem', lineHeight: 1.5, color: isDark ? '#ffffff' : undefined },
      subtitle2: { fontWeight: 500, fontSize: '0.875rem', lineHeight: 1.5, color: isDark ? '#ffffff' : undefined },
      body1: { fontSize: '1rem', lineHeight: 1.6, color: isDark ? '#ffffff' : '#334155' },
      body2: { fontSize: '0.875rem', lineHeight: 1.57, color: isDark ? '#94a3b8' : '#475569' },
      button: { fontWeight: 600, letterSpacing: 0, color: isDark ? '#ffffff' : undefined },
      caption: { fontSize: '0.75rem', lineHeight: 1.4, color: isDark ? '#94a3b8' : '#64748b' },
    },
    shape: {
      borderRadius: 10,
    },
    components: {
      MuiCssBaseline: {
        styleOverrides: {
          html: {
            fontSize: BASE_HTML_FONT_SIZE,
          },
          body: {
            backgroundColor: isDark ? '#050B14' : '#f8fafc',
            color: isDark ? '#ffffff' : '#0f172a',
            transition: 'background-color 0.4s ease, color 0.4s ease',
          },
          '::selection': {
            backgroundColor: isDark ? 'rgba(16, 185, 129, 0.3)' : 'rgba(16, 185, 129, 0.2)',
            color: isDark ? '#ffffff' : '#000000',
          },
        },
      },
      MuiButton: {
        styleOverrides: {
          root: {
            textTransform: 'none',
            borderRadius: 10,
            padding: '7px 16px',
            transition: 'background-color 0.15s ease, box-shadow 0.15s ease',
          },
          contained: {
            boxShadow: isDark
              ? '0 1px 2px rgba(0,0,0,0.4)'
              : '0 1px 2px rgba(15, 23, 42, 0.06)',
            '&:hover': {
              boxShadow: isDark
                ? '0 2px 8px rgba(0,0,0,0.5)'
                : '0 2px 8px rgba(15, 23, 42, 0.08)',
            },
            '&:active': {
              transform: 'scale(0.98)',
            },
          },
          outlined: {
            borderColor: isDark ? 'rgba(255, 255, 255, 0.15)' : '#e2e8f0',
            backgroundColor: 'transparent',
            ...(isDark ? { color: '#ffffff' } : {}),
            '&:hover': {
              backgroundColor: isDark ? 'rgba(255, 255, 255, 0.05)' : '#f8fafc',
              borderColor: isDark ? 'rgba(255, 255, 255, 0.3)' : '#cbd5e1',
            },
          },
          text: isDark
            ? {
                color: '#ffffff',
              }
            : {},
        },
      },
      MuiCard: {
        styleOverrides: {
          root: {
            borderRadius: 12,
            backgroundColor: isDark ? '#0B1221' : SURFACE_ELEVATED_LIGHT,
            boxShadow: isDark ? 'none' : LIGHT_CARD_SHADOW,
            border: `1px solid ${isDark ? 'rgba(255, 255, 255, 0.08)' : '#e2e8f0'}`,
            transition: 'box-shadow 0.2s ease',
            backgroundImage: 'none',
          },
        },
      },
      ...getGlassDialogComponentStyles({
        isDark,
        primaryMain,
        backgroundPaper: isDark ? '#0B1221' : '#ffffff',
        divider: isDark ? 'rgba(255, 255, 255, 0.08)' : '#e2e8f0',
      }),
      MuiOutlinedInput: {
        defaultProps: {
          notched: false,
        },
        styleOverrides: {
          root: {
            borderRadius: 10,
            backgroundColor: isDark ? 'rgba(0,0,0,0.3)' : '#ffffff',
            transition: 'box-shadow 0.15s ease, background-color 0.15s ease',
            '&:hover .MuiOutlinedInput-notchedOutline': {
              borderColor: isDark ? alpha(primaryMain, 0.5) : '#94a3b8',
            },
            '&.Mui-focused': {
              backgroundColor: isDark ? 'rgba(0,0,0,0.5)' : '#ffffff',
              boxShadow: isDark
                ? `0 0 0 2px ${alpha(primaryMain, 0.4)}`
                : `0 0 0 3px ${alpha(primaryMain, 0.15)}`,
            },
            '&.Mui-focused .MuiOutlinedInput-notchedOutline': {
              borderColor: primaryMain,
            },
          },
          notchedOutline: {
            borderColor: isDark ? 'rgba(255, 255, 255, 0.15)' : 'rgba(0,0,0,0.1)',
            transition: 'border-color 0.15s ease',
          },
          input: isDark
            ? {
                color: '#ffffff',
                '&::placeholder': {
                  color: '#94a3b8',
                  opacity: 1,
                },
              }
            : {},
        },
      },
      MuiInputLabel: {
        defaultProps: {
          shrink: true,
        },
        styleOverrides: {
          root: ({ theme }) => ({
            '&.MuiInputLabel-outlined': {
              position: 'static',
              transform: 'none',
              maxWidth: '100%',
              marginBottom: theme.spacing(0.75),
            },
            ...(isDark
              ? {
                  color: '#ffffff',
                  '&.Mui-focused': {
                    color: '#ffffff',
                  },
                  '&.Mui-error': {
                    color: '#f87171',
                  },
                }
              : {}),
          }),
        },
      },
      MuiFormLabel: {
        styleOverrides: {
          root: isDark
            ? {
                color: '#ffffff',
                '&.Mui-focused': {
                  color: '#ffffff',
                },
                '&.Mui-error': {
                  color: '#f87171',
                },
              }
            : {},
        },
      },
      MuiFormHelperText: {
        styleOverrides: {
          root: isDark
            ? {
                color: '#94a3b8',
              }
            : {},
        },
      },
      MuiTableCell: {
        styleOverrides: {
          root: {
            padding: '12px 16px',
            borderBottom: `1px solid ${isDark ? 'rgba(255, 255, 255, 0.05)' : '#e2e8f0'}`,
            color: isDark ? '#ffffff' : '#475569',
          },
          head: {
            fontWeight: 600,
            fontSize: '0.8125rem',
            color: isDark ? '#94a3b8' : '#64748b',
            backgroundColor: isDark ? 'rgba(255,255,255,0.03)' : '#f8fafc',
            whiteSpace: 'nowrap',
          },
        },
      },
      MuiTableRow: {
        styleOverrides: {
          root: {
            transition: 'background-color 0.2s ease',
            '&:hover': {
              backgroundColor: isDark ? 'rgba(255, 255, 255, 0.03)' : '#f8fafc',
            },
            '&:last-child td, &:last-child th': {
              borderBottom: 0,
            },
          },
        },
      },
      MuiChip: {
        styleOverrides: {
          root: {
            borderRadius: 16,
            fontWeight: 600,
            letterSpacing: '0.02em',
          },
          outlined: {
            backgroundColor: isDark ? 'transparent' : '#ffffff',
            borderColor: isDark ? 'rgba(255, 255, 255, 0.15)' : '#e2e8f0',
          },
        },
      },
      MuiTab: {
        styleOverrides: {
          root: {
            textTransform: 'none',
            fontWeight: 600,
            fontSize: '0.9rem',
            minHeight: 48,
            ...(isDark
              ? {
                  color: '#94a3b8',
                  '&.Mui-selected': {
                    color: '#ffffff',
                  },
                }
              : {}),
          },
        },
      },
      MuiAppBar: {
        styleOverrides: {
          root: {
            backgroundColor: isDark ? '#0B1221' : '#ffffff',
            color: isDark ? '#ffffff' : '#0f172a',
            borderBottom: `1px solid ${isDark ? 'rgba(255, 255, 255, 0.08)' : '#e2e8f0'}`,
            boxShadow: 'none',
          },
        },
      },
      MuiPaper: {
        styleOverrides: {
          root: {
            backgroundImage: 'none',
            backgroundColor: isDark ? '#0B1221' : '#ffffff',
          },
        },
      },
      MuiMenu: {
        styleOverrides: {
          paper: {
            borderRadius: 12,
            border: isDark ? '1px solid rgba(255,255,255,0.08)' : '1px solid #e2e8f0',
            boxShadow: isDark
              ? '0 10px 40px rgba(0,0,0,0.55)'
              : '0 8px 24px rgba(15, 23, 42, 0.08)',
            backgroundColor: isDark ? '#0B1221' : '#ffffff',
          },
        },
      },
      MuiMenuItem: {
        styleOverrides: {
          root: {
            color: isDark ? '#ffffff' : '#0f172a',
            '& .MuiListItemIcon-root': {
              color: isDark ? '#94a3b8' : '#475569',
              minWidth: 34,
            },
            '&:hover': {
              backgroundColor: isDark ? 'rgba(255, 255, 255, 0.08)' : '#f1f5f9',
            },
          },
        },
      },
      MuiTooltip: {
        styleOverrides: {
          tooltip: {
            color: isDark ? '#ffffff' : '#0f172a',
            backgroundColor: isDark ? '#111827' : '#ffffff',
            border: `1px solid ${isDark ? 'rgba(255, 255, 255, 0.15)' : '#e2e8f0'}`,
            boxShadow: isDark ? '0 8px 24px rgba(0,0,0,0.5)' : '0 6px 14px rgba(15,23,42,0.12)',
          },
          arrow: {
            color: isDark ? '#111827' : '#ffffff',
            '&::before': {
              border: `1px solid ${isDark ? 'rgba(255, 255, 255, 0.15)' : '#e2e8f0'}`,
            },
          },
        },
      },
    },
  })
}

interface Props {
  children: ReactNode
}

export function CustomThemeProvider ({ children }: Props) {
  const [mode, setMode] = useState<ThemeMode>(() => {
    if (typeof window === 'undefined') {
      return 'light'
    }

    const savedMode = localStorage.getItem('theme_mode') as ThemeMode | null
    if (savedMode === 'dark' || savedMode === 'light') {
      return savedMode
    }

    return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light'
  })

  useEffect(() => {
    const isDark = mode === 'dark'
    const root = document.documentElement

    root.style.fontSize = `${BASE_HTML_FONT_SIZE}px`
    root.setAttribute('data-theme', mode)
    root.classList.toggle('dark', isDark)
    document.body.classList.toggle('dark', isDark)
    localStorage.setItem('theme_mode', mode)
    root.style.setProperty('--primary', DEFAULT_PRIMARY.main)
    root.style.setProperty('--primary-light', DEFAULT_PRIMARY.light)
    root.style.setProperty('--primary-dark', DEFAULT_PRIMARY.dark)
    root.style.setProperty('--secondary', DEFAULT_SECONDARY)
    root.style.setProperty('--heading', isDark ? '#ffffff' : '#0f172a')
    root.style.setProperty('--surface-elevated', SURFACE_ELEVATED_LIGHT)
    root.style.setProperty('--accent-gradient', ACCENT_GRADIENT)
  }, [mode])

  const toggleThemeMode = () => {
    setMode((prevMode) => (prevMode === 'light' ? 'dark' : 'light'))
  }

  const theme = useMemo(() => createAppTheme(mode), [mode])

  return (
    <ThemeModeContext.Provider value={{ mode, toggleThemeMode }}>
      <ThemeProvider theme={theme}>
        <CssBaseline />
        {children}
      </ThemeProvider>
    </ThemeModeContext.Provider>
  )
}
