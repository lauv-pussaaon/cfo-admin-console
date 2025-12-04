'use client'

import { useState } from 'react'
import { Menu, Box, Typography, MenuItem, ListItemIcon, ListItemText, IconButton, Avatar } from '@mui/material'
import { 
  AccountCircle as AccountIcon,
  Logout as LogoutIcon,
  Edit as PersonEditIcon
} from '@mui/icons-material'
import { getRoleLabel } from '@/types/roles'
import type { User } from '@/lib/api/types'
import EditProfileModal from '@/components/EditProfileModal'

interface UserMenuProps {
  user: User | null
  onLogout: () => void
}

export default function UserMenu({
  user,
  onLogout,
}: UserMenuProps) {
  const [anchorEl, setAnchorEl] = useState<null | HTMLElement>(null)
  const [editProfileOpen, setEditProfileOpen] = useState(false)

  const handleMenuOpen = (event: React.MouseEvent<HTMLElement>) => {
    setAnchorEl(event.currentTarget)
  }

  const handleMenuClose = () => {
    setAnchorEl(null)
  }

  const handleEditProfileClick = () => {
    setEditProfileOpen(true)
    handleMenuClose()
  }

  const handleEditProfileClose = () => {
    setEditProfileOpen(false)
  }

  const handleEditProfileSuccess = () => {
    // User will be updated via AuthContext
    setEditProfileOpen(false)
  }

  return (
    <>
      <IconButton onClick={handleMenuOpen} sx={{ p: 0 }}>
        <Avatar 
          src={user?.avatar_url || undefined}
          sx={{ 
            width: 40, 
            height: 40, 
            bgcolor: '#10b981',
            border: '2px solid #f0fdf4', 
            '&:hover': { bgcolor: '#059669', transform: 'scale(1.05)', transition: 'all 0.2s ease-in-out' } 
          }}
        >
          {user?.avatar_url ? null : (
            user?.name?.charAt(0)?.toUpperCase() || <AccountIcon sx={{ color: 'white' }} />
          )}
        </Avatar>
      </IconButton>

      <Menu
        anchorEl={anchorEl}
        open={Boolean(anchorEl)}
        onClose={handleMenuClose}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
        transformOrigin={{ vertical: 'top', horizontal: 'right' }}
        PaperProps={{ sx: { minWidth: 200, mt: 1 } }}
      >
        <Box sx={{ px: 2, py: 1.5, borderBottom: '1px solid', borderColor: 'divider' }}>
          <Typography variant="subtitle2" sx={{ fontWeight: 600, color: 'text.primary' }}>
            {user?.name || 'User'}
          </Typography>
          <Typography variant="caption" sx={{ color: 'text.secondary' }}>
            {user?.role ? getRoleLabel(user.role, 'th') : 'Role'}
          </Typography>
        </Box>

        <MenuItem onClick={handleEditProfileClick} sx={{ py: 1.5 }}>
          <ListItemIcon><PersonEditIcon fontSize="small" /></ListItemIcon>
          <ListItemText>Edit Profile</ListItemText>
        </MenuItem>

        <MenuItem onClick={onLogout} sx={{ py: 1.5 }}>
          <ListItemIcon><LogoutIcon fontSize="small" /></ListItemIcon>
          <ListItemText>Logout</ListItemText>
        </MenuItem>
      </Menu>

      <EditProfileModal
        open={editProfileOpen}
        onClose={handleEditProfileClose}
        onSuccess={handleEditProfileSuccess}
        user={user}
      />
    </>
  )
}

