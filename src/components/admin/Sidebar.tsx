'use client'

import React, { useState, useMemo } from 'react'
import {
  Box,
  Drawer,
  List,
  ListItem,
  ListItemButton,
  ListItemIcon,
  ListItemText,
  IconButton,
  Typography,
  Tooltip,
  Divider,
} from '@mui/material'
import { alpha, useTheme } from '@mui/material/styles'
import {
  ChevronLeft as ChevronLeftIcon,
  ChevronRight as ChevronRightIcon,
  Dashboard as DashboardIcon,
  Business as BusinessIcon,
  People as PeopleIcon,
  Analytics as AnalyticsIcon,
  Settings as SettingsIcon,
  Science as ScienceIcon,
  ViewModule as ViewModuleIcon,
  SupportAgent as SupportAgentIcon,
  HowToReg as HowToRegIcon,
  ManageAccounts as ManageAccountsIcon,
  Brightness4,
  Brightness7,
} from '@mui/icons-material'
import { useRouter, usePathname } from 'next/navigation'
import { useAuth } from '@/contexts/AuthContext'
import { useThemeMode } from '@/components/ThemeProvider'
import { isAdmin } from '@/lib/permissions'
import {
  ADMIN_SETTINGS_NAV_ITEM,
  getDashboardNavItemsForRole,
  getNavSectionsForRole,
  type AdminNavItem,
  type AdminNavSectionId,
} from '@/constants/admin-console-nav'
import CFOLogo from '../CFOLogo'

const DRAWER_WIDTH = 280
const COLLAPSED_DRAWER_WIDTH = 88

const NAV_ICONS: Record<string, React.ReactNode> = {
  '/admin-console': <DashboardIcon />,
  '/admin-console/organizations': <BusinessIcon />,
  '/admin-console/trial-requests': <HowToRegIcon />,
  '/admin-console/support-clients': <SupportAgentIcon />,
  '/admin-console/users': <PeopleIcon />,
  '/admin-console/analytics': <AnalyticsIcon />,
  '/admin-console/emission-resources': <ScienceIcon />,
  '/admin-console/emission-templates': <ViewModuleIcon />,
}

const SECTION_ICONS: Record<AdminNavSectionId, React.ReactNode> = {
  clients: <BusinessIcon fontSize="small" />,
  support: <SupportAgentIcon fontSize="small" />,
  adminUsers: <ManageAccountsIcon fontSize="small" />,
  fuel: <ScienceIcon fontSize="small" />,
}

interface SidebarNavItem extends AdminNavItem {
  icon: React.ReactNode
}

function withIcons (items: AdminNavItem[]): SidebarNavItem[] {
  return items.map((item) => ({
    ...item,
    icon: NAV_ICONS[item.path] ?? <DashboardIcon />,
  }))
}

export default function Sidebar () {
  const [collapsed, setCollapsed] = useState(true)
  const router = useRouter()
  const pathname = usePathname()
  const { user } = useAuth()
  const theme = useTheme()
  const { mode, toggleThemeMode } = useThemeMode()
  const primaryMain = theme.palette.primary.main
  const primaryLight = theme.palette.primary.light

  const dashboardItem = useMemo(() => {
    const home = getDashboardNavItemsForRole(user?.role).find((item) => item.path === '/admin-console')
    return home ? withIcons([home])[0] : null
  }, [user?.role])

  const navSections = useMemo(
    () =>
      getNavSectionsForRole(user?.role).map((group) => ({
        ...group,
        items: withIcons(group.items),
      })),
    [user?.role]
  )

  const settingsActive =
    pathname === ADMIN_SETTINGS_NAV_ITEM.path ||
    pathname.startsWith(`${ADMIN_SETTINGS_NAV_ITEM.path}/`)

  const handleToggle = () => {
    setCollapsed(!collapsed)
  }

  const navigate = (path: string) => {
    router.push(path)
  }

  const renderNavItem = (item: SidebarNavItem) => {
    const isActive =
      pathname === item.path ||
      (item.path !== '/admin-console' && pathname.startsWith(item.path))

    return (
      <ListItem key={`${item.path}-${item.title}`} disablePadding sx={{ display: 'block' }}>
        <Tooltip
          title={collapsed ? `${item.title} — ${item.description}` : ''}
          placement="right"
        >
          <ListItemButton
            onClick={() => navigate(item.path)}
            sx={{
              minHeight: collapsed ? 48 : 56,
              justifyContent: collapsed ? 'center' : 'initial',
              px: 2.5,
              py: collapsed ? 0 : 1,
              borderRadius: 2,
              mb: 0.5,
              backgroundColor: isActive ? alpha(primaryMain, 0.15) : 'transparent',
              color: isActive ? 'primary.main' : '#94a3b8',
              '&:hover': {
                backgroundColor: isActive ? alpha(primaryMain, 0.2) : 'rgba(255, 255, 255, 0.05)',
                color: isActive ? primaryLight : '#ffffff',
                '& .MuiListItemIcon-root': {
                  color: isActive ? primaryLight : '#ffffff',
                },
                '& .MuiListItemText-secondary': {
                  color: isActive ? alpha(primaryLight, 0.75) : 'rgba(255, 255, 255, 0.55)',
                },
              },
            }}
          >
            <ListItemIcon
              sx={{
                minWidth: 0,
                mr: collapsed ? 0 : 2,
                justifyContent: 'center',
                color: isActive ? 'primary.main' : '#94a3b8',
                transition: 'color 0.2s',
              }}
            >
              {item.icon}
            </ListItemIcon>
            {!collapsed && (
              <ListItemText
                primary={item.title}
                secondary={item.description}
                primaryTypographyProps={{
                  fontSize: '0.875rem',
                  fontWeight: isActive ? 600 : 500,
                  color: 'inherit',
                }}
                secondaryTypographyProps={{
                  fontSize: '0.6875rem',
                  lineHeight: 1.35,
                  sx: {
                    color: isActive ? alpha(primaryLight, 0.65) : 'rgba(148, 163, 184, 0.85)',
                    display: '-webkit-box',
                    WebkitLineClamp: 2,
                    WebkitBoxOrient: 'vertical',
                    overflow: 'hidden',
                  },
                }}
              />
            )}
          </ListItemButton>
        </Tooltip>
      </ListItem>
    )
  }

  return (
    <Drawer
      variant="permanent"
      sx={{
        width: collapsed ? COLLAPSED_DRAWER_WIDTH : DRAWER_WIDTH,
        flexShrink: 0,
        '& .MuiDrawer-paper': {
          width: collapsed ? COLLAPSED_DRAWER_WIDTH : DRAWER_WIDTH,
          boxSizing: 'border-box',
          transition: 'width 0.3s cubic-bezier(0.4, 0, 0.2, 1)',
          overflowX: 'hidden',
          backgroundColor: '#1e293b',
          color: '#f1f5f9',
          borderRight: 'none',
          display: 'flex',
          flexDirection: 'column',
          zIndex: 1201,
        },
      }}
    >
      <Box
        sx={{
          p: 3,
          display: 'flex',
          alignItems: 'center',
          justifyContent: collapsed ? 'center' : 'space-between',
          minHeight: 80,
        }}
      >
        {!collapsed && (
          <Box sx={{ display: 'flex', alignItems: 'center', gap: 1.5 }}>
            <CFOLogo size={32} color={primaryMain} />
            <Typography
              variant="h6"
              sx={{
                fontWeight: 700,
                color: '#ffffff',
                letterSpacing: '-0.02em',
                whiteSpace: 'nowrap',
              }}
            >
              IdeaCarb
            </Typography>
          </Box>
        )}
        {collapsed && <CFOLogo size={32} color={primaryMain} />}

        <IconButton
          onClick={handleToggle}
          sx={{
            color: '#94a3b8',
            '&:hover': { color: '#ffffff', backgroundColor: 'rgba(255, 255, 255, 0.05)' },
            display: { xs: 'none', md: 'inline-flex' },
            position: collapsed ? 'static' : 'relative',
          }}
        >
          {collapsed ? <ChevronRightIcon /> : <ChevronLeftIcon />}
        </IconButton>
      </Box>

      <Divider sx={{ borderColor: 'rgba(255, 255, 255, 0.05)', mx: 2 }} />

      <Box sx={{ flexGrow: 1, py: 2, overflowY: 'auto' }}>
        <List sx={{ px: 2, display: 'flex', flexDirection: 'column' }}>
          {dashboardItem && renderNavItem(dashboardItem)}
          {dashboardItem && navSections.length > 0 && (
            <Divider sx={{ borderColor: 'rgba(255, 255, 255, 0.06)', my: 1 }} />
          )}
          {navSections.map((group, index) => (
            <Box key={group.section.id}>
              {index > 0 && (
                <Divider sx={{ borderColor: 'rgba(255, 255, 255, 0.06)', my: 1 }} />
              )}
              <Tooltip title={collapsed ? group.section.title : ''} placement="right">
                <Box
                  sx={{
                    display: 'flex',
                    alignItems: 'center',
                    justifyContent: collapsed ? 'center' : 'flex-start',
                    gap: 1,
                    px: collapsed ? 0 : 1,
                    py: 0.75,
                    color: '#64748b',
                  }}
                >
                  {SECTION_ICONS[group.section.id]}
                  {!collapsed && (
                    <Typography
                      variant="caption"
                      sx={{
                        fontWeight: 700,
                        letterSpacing: '0.04em',
                        textTransform: 'uppercase',
                        color: 'inherit',
                        whiteSpace: 'nowrap',
                      }}
                    >
                      {group.section.title}
                    </Typography>
                  )}
                </Box>
              </Tooltip>
              {group.items.map(renderNavItem)}
            </Box>
          ))}
        </List>
      </Box>

      <Box sx={{ p: 2, display: 'flex', flexDirection: 'column', gap: 0.5 }}>
        <Tooltip title={mode === 'dark' ? 'โหมดสว่าง' : 'โหมดมืด'} placement="right">
          <IconButton
            onClick={toggleThemeMode}
            aria-label={mode === 'dark' ? 'โหมดสว่าง' : 'โหมดมืด'}
            sx={{
              alignSelf: collapsed ? 'center' : 'flex-end',
              color: '#94a3b8',
              '&:hover': { color: '#ffffff', backgroundColor: 'rgba(255, 255, 255, 0.05)' },
            }}
          >
            {mode === 'dark'
              ? <Brightness7 sx={{ color: '#fbbf24' }} />
              : <Brightness4 />}
          </IconButton>
        </Tooltip>
        {isAdmin(user) && (
          <List disablePadding>
            <ListItem disablePadding sx={{ display: 'block' }}>
              <Tooltip
                title={
                  collapsed
                    ? `${ADMIN_SETTINGS_NAV_ITEM.title} — ${ADMIN_SETTINGS_NAV_ITEM.description}`
                    : ''
                }
                placement="right"
              >
                <ListItemButton
                  onClick={() => navigate(ADMIN_SETTINGS_NAV_ITEM.path)}
                  sx={{
                    minHeight: collapsed ? 48 : 56,
                    justifyContent: collapsed ? 'center' : 'initial',
                    px: 2.5,
                    py: collapsed ? 0 : 1,
                    borderRadius: 2,
                    color: settingsActive ? 'primary.main' : '#94a3b8',
                    backgroundColor: settingsActive ? alpha(primaryMain, 0.15) : 'transparent',
                    '&:hover': {
                      backgroundColor: settingsActive
                        ? alpha(primaryMain, 0.2)
                        : 'rgba(255, 255, 255, 0.05)',
                      color: '#ffffff',
                      '& .MuiListItemText-secondary': {
                        color: 'rgba(255, 255, 255, 0.55)',
                      },
                    },
                  }}
                >
                  <ListItemIcon
                    sx={{
                      minWidth: 0,
                      mr: collapsed ? 0 : 2,
                      justifyContent: 'center',
                      color: 'inherit',
                    }}
                  >
                    <SettingsIcon />
                  </ListItemIcon>
                  {!collapsed && (
                    <ListItemText
                      primary={ADMIN_SETTINGS_NAV_ITEM.title}
                      secondary={ADMIN_SETTINGS_NAV_ITEM.description}
                      primaryTypographyProps={{ fontSize: '0.875rem', fontWeight: 500, color: 'inherit' }}
                      secondaryTypographyProps={{
                        fontSize: '0.6875rem',
                        lineHeight: 1.35,
                        sx: { color: 'rgba(148, 163, 184, 0.85)' },
                      }}
                    />
                  )}
                </ListItemButton>
              </Tooltip>
            </ListItem>
          </List>
        )}
      </Box>
    </Drawer>
  )
}
