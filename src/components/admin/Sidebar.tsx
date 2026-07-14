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
  Link as LinkIcon,
} from '@mui/icons-material'
import { useRouter, usePathname } from 'next/navigation'
import { useAuth } from '@/contexts/AuthContext'
import { isSupport } from '@/lib/permissions'
import {
  ADMIN_DASHBOARD_NAV_ITEMS,
  ADMIN_SETTINGS_NAV_ITEM,
  SUPPORT_NAV_ITEMS,
  type AdminNavItem,
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
  '/admin-console/fuel-resources-linking': <LinkIcon />,
  '/admin-console/emission-templates': <ViewModuleIcon />,
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

const FULL_NAV_ITEMS = withIcons(ADMIN_DASHBOARD_NAV_ITEMS)
const SUPPORT_NAV = withIcons(SUPPORT_NAV_ITEMS)

export default function Sidebar () {
  const [collapsed, setCollapsed] = useState(true)
  const router = useRouter()
  const pathname = usePathname()
  const { user } = useAuth()

  const navItems = useMemo(
    () => (user && isSupport(user) ? SUPPORT_NAV : FULL_NAV_ITEMS),
    [user]
  )

  const handleToggle = () => {
    setCollapsed(!collapsed)
  }

  const navigate = (path: string) => {
    router.push(path)
  }

  const renderNavItem = (item: SidebarNavItem) => {
    const isActive =
      user && isSupport(user) && item.path === '/admin-console'
        ? pathname === '/admin-console' || pathname.startsWith('/admin-console/organizations')
        : pathname === item.path || (item.path !== '/admin-console' && pathname.startsWith(item.path))

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
              backgroundColor: isActive ? 'rgba(16, 185, 129, 0.15)' : 'transparent',
              color: isActive ? '#10b981' : '#94a3b8',
              '&:hover': {
                backgroundColor: isActive ? 'rgba(16, 185, 129, 0.2)' : 'rgba(255, 255, 255, 0.05)',
                color: isActive ? '#34d399' : '#ffffff',
                '& .MuiListItemIcon-root': {
                  color: isActive ? '#34d399' : '#ffffff',
                },
                '& .MuiListItemText-secondary': {
                  color: isActive ? 'rgba(52, 211, 153, 0.75)' : 'rgba(255, 255, 255, 0.55)',
                },
              },
            }}
          >
            <ListItemIcon
              sx={{
                minWidth: 0,
                mr: collapsed ? 0 : 2,
                justifyContent: 'center',
                color: isActive ? '#10b981' : '#94a3b8',
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
                    color: isActive ? 'rgba(52, 211, 153, 0.65)' : 'rgba(148, 163, 184, 0.85)',
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
            <CFOLogo size={32} color="#10b981" />
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
        {collapsed && <CFOLogo size={32} color="#10b981" />}

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

      <Box sx={{ flexGrow: 1, py: 2 }}>
        <List sx={{ px: 2, gap: 1, display: 'flex', flexDirection: 'column' }}>
          {navItems.map(renderNavItem)}
        </List>
      </Box>

      <Box sx={{ p: 2 }}>
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
                  color:
                    pathname === ADMIN_SETTINGS_NAV_ITEM.path ||
                    pathname.startsWith(`${ADMIN_SETTINGS_NAV_ITEM.path}/`)
                      ? '#10b981'
                      : '#94a3b8',
                  backgroundColor:
                    pathname === ADMIN_SETTINGS_NAV_ITEM.path ||
                    pathname.startsWith(`${ADMIN_SETTINGS_NAV_ITEM.path}/`)
                      ? 'rgba(16, 185, 129, 0.15)'
                      : 'transparent',
                  '&:hover': {
                    backgroundColor:
                      pathname === ADMIN_SETTINGS_NAV_ITEM.path ||
                      pathname.startsWith(`${ADMIN_SETTINGS_NAV_ITEM.path}/`)
                        ? 'rgba(16, 185, 129, 0.2)'
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
      </Box>
    </Drawer>
  )
}
