'use client'

import React from 'react'
import {
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  DialogContentText,
  Button,
  Box,
  Typography,
  CircularProgress,
  Alert
} from '@mui/material'
import {
  Warning as WarningIcon,
  Delete as DeleteIcon
} from '@mui/icons-material'

interface DeleteConfirmationDialogProps {
  open: boolean
  onClose: () => void
  onConfirm: () => Promise<void>
  title?: string
  message?: string
  description?: string | React.ReactNode
  itemName?: string
  isDeleting?: boolean
  error?: string | null
}

export default function DeleteConfirmationDialog({
  open,
  onClose,
  onConfirm,
  title = 'ยืนยันการลบ',
  message = 'คุณแน่ใจหรือไม่ที่จะลบรายการนี้?',
  description,
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  itemName: _itemName, // Kept for backward compatibility but not displayed
  isDeleting = false,
  error = null
}: DeleteConfirmationDialogProps) {

  const handleConfirm = async () => {
    try {
      await onConfirm()
    } catch {
      // Error handling is done by parent component
    }
  }

  return (
    <Dialog
      open={open}
      onClose={!isDeleting ? onClose : undefined} // Prevent closing while deleting
      maxWidth="sm"
      fullWidth
      aria-labelledby="delete-dialog-title"
      aria-describedby="delete-dialog-description"
    >
      <DialogTitle 
        id="delete-dialog-title"
        sx={{ 
          display: 'flex', 
          alignItems: 'center', 
          gap: 2,
          color: 'error.main'
        }}
      >
        <WarningIcon color="error" />
        {title}
      </DialogTitle>
      
      <DialogContent>
        <DialogContentText 
          id="delete-dialog-description"
          sx={{ mb: description ? 2 : 0 }}
        >
          {message}
        </DialogContentText>
        
        {description && (
          <Box sx={{ mb: 2 }}>
            {typeof description === 'string' ? (
              <Typography 
                variant="body2" 
                color="text.secondary"
                sx={{ whiteSpace: 'pre-line' }}
              >
                {description}
              </Typography>
            ) : (
              description
            )}
          </Box>
        )}

        {error && (
          <Alert severity="error" sx={{ mt: 2 }}>
            {error}
          </Alert>
        )}
      </DialogContent>
      
      <DialogActions sx={{ p: 3, gap: 1 }}>
        <Button 
          onClick={onClose}
          disabled={isDeleting}
          color="inherit"
          variant="outlined"
          size="large"
        >
          ยกเลิก
        </Button>
        <Button 
          onClick={handleConfirm}
          disabled={isDeleting}
          color="error"
          variant="contained"
          size="large"
          startIcon={isDeleting ? <CircularProgress size={16} /> : <DeleteIcon />}
          sx={{ minWidth: 120 }}
        >
          {isDeleting ? 'กำลังลบ...' : 'ลบข้อมูล'}
        </Button>
      </DialogActions>
    </Dialog>
  )
}











