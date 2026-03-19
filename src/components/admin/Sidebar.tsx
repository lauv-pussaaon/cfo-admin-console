'use client'

import React, { useState } from 'react'
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
  Logout as LogoutIcon,
  Science as ScienceIcon,
  ViewModule as ViewModuleIcon,
} from '@mui/icons-material'
import { useRouter, usePathname } from 'next/navigation'
import CFOLogo from '../CFOLogo'

const DRAWER_WIDTH = 280
const COLLAPSED_DRAWER_WIDTH = 88

interface NavItem {
  title: string
  path: string
  icon: React.ReactNode
}

const NAV_ITEMS: NavItem[] = [
  { title: 'Dashboard', path: '/admin-console', icon: <DashboardIcon /> },
  { title: 'Organizations', path: '/admin-console/organizations', icon: <BusinessIcon /> },
  { title: 'Users', path: '/admin-console/users', icon: <PeopleIcon /> },
  { title: 'Analytics', path: '/admin-console/analytics', icon: <AnalyticsIcon /> },
  { title: 'Emission Resources', path: '/admin-console/emission-resources', icon: <ScienceIcon /> },
  { title: 'Emission Templates', path: '/admin-console/emission-templates', icon: <ViewModuleIcon /> },
]

export default function Sidebar() {
  const [collapsed, setCollapsed] = useState(false)
  const router = useRouter()
  const pathname = usePathname()

  const handleToggle = () => {
    setCollapsed(!collapsed)
  }

  const navigate = (path: string) => {
    router.push(path)
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
      {/* Sidebar Header / Logo */}
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

      {/* Navigation List */}
      <Box sx={{ flexGrow: 1, py: 2 }}>
        <List sx={{ px: 2, gap: 1, display: 'flex', flexDirection: 'column' }}>
          {NAV_ITEMS.map((item) => {
            const isActive = pathname === item.path || (item.path !== '/admin-console' && pathname.startsWith(item.path))
            return (
              <ListItem key={item.title} disablePadding sx={{ display: 'block' }}>
                <Tooltip title={collapsed ? item.title : ''} placement="right">
                  <ListItemButton
                    onClick={() => navigate(item.path)}
                    sx={{
                      minHeight: 48,
                      justifyContent: collapsed ? 'center' : 'initial',
                      px: 2.5,
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
                        primaryTypographyProps={{
                          fontSize: '0.875rem',
                          fontWeight: isActive ? 600 : 500,
                        }}
                        sx={{ opacity: collapsed ? 0 : 1 }}
                      />
                    )}
                  </ListItemButton>
                </Tooltip>
              </ListItem>
            )
          })}
        </List>
      </Box>

      {/* Sidebar Footer */}
      <Box sx={{ p: 2 }}>
        <List disablePadding>
          <ListItem disablePadding sx={{ display: 'block' }}>
            <ListItemButton
              sx={{
                minHeight: 48,
                justifyContent: collapsed ? 'center' : 'initial',
                px: 2.5,
                borderRadius: 2,
                color: '#94a3b8',
                '&:hover': {
                  backgroundColor: 'rgba(255, 255, 255, 0.05)',
                  color: '#ffffff',
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
                  primary="Settings"
                  primaryTypographyProps={{ fontSize: '0.875rem', fontWeight: 500 }}
                />
              )}
            </ListItemButton>
          </ListItem>
        </List>
      </Box>
    </Drawer>
  )
}
