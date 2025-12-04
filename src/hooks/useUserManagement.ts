import { useState } from 'react'
import { userService } from '@/lib/services'
import type { User } from '@/lib/api/types'
import { isExpectedError } from '@/lib/utils/errors'

export function useUserManagement(onSuccess: () => void) {
  const [createUserModalOpen, setCreateUserModalOpen] = useState(false)
  const [editUserModalOpen, setEditUserModalOpen] = useState(false)
  const [editingUser, setEditingUser] = useState<User | null>(null)
  const [deleteUserDialogOpen, setDeleteUserDialogOpen] = useState(false)
  const [deletingUserId, setDeletingUserId] = useState<string | null>(null)
  const [deletingUserName, setDeletingUserName] = useState('')
  const [isDeletingUser, setIsDeletingUser] = useState(false)
  const [deleteUserError, setDeleteUserError] = useState<string | null>(null)

  const handleCreateUser = () => {
    setCreateUserModalOpen(true)
  }

  const handleCreateUserSuccess = () => {
    setCreateUserModalOpen(false)
    onSuccess()
  }

  const handleEditUser = async (userId: string) => {
    try {
      const fullUser = await userService.getUserById(userId)
      if (fullUser) {
        setEditingUser(fullUser)
        setEditUserModalOpen(true)
      }
    } catch (error) {
      console.error('Error loading user:', error)
    }
  }

  const handleEditUserSuccess = () => {
    setEditUserModalOpen(false)
    setEditingUser(null)
    onSuccess()
  }

  const handleDeleteUser = (userId: string, userName: string, userEmail: string) => {
    setDeletingUserId(userId)
    setDeletingUserName(`${userName} (${userEmail})`)
    setDeleteUserError(null)
    setDeleteUserDialogOpen(true)
  }

  const handleDeleteUserConfirm = async () => {
    if (!deletingUserId) return
    
    setIsDeletingUser(true)
    setDeleteUserError(null)
    
    try {
      await userService.deleteUser(deletingUserId)
      
      setDeleteUserDialogOpen(false)
      setDeletingUserId(null)
      setDeletingUserName('')
      setIsDeletingUser(false)
      
      onSuccess()
    } catch (error) {
      setDeleteUserError(error instanceof Error ? error.message : 'การลบข้อมูลล้มเหลว กรุณาลองใหม่อีกครั้ง')
      setIsDeletingUser(false)
      if (!isExpectedError(error)) {
        console.error('Unexpected error deleting user:', error)
      }
    }
  }

  const handleDeleteUserCancel = () => {
    setDeleteUserDialogOpen(false)
    setDeletingUserId(null)
    setDeletingUserName('')
    setDeleteUserError(null)
    setIsDeletingUser(false)
  }

  return {
    createUserModalOpen,
    editUserModalOpen,
    editingUser,
    deleteUserDialogOpen,
    deletingUserName,
    isDeletingUser,
    deleteUserError,
    handleCreateUser,
    handleCreateUserSuccess,
    handleEditUser,
    handleEditUserSuccess,
    handleDeleteUser,
    handleDeleteUserConfirm,
    handleDeleteUserCancel,
    setCreateUserModalOpen,
    setEditUserModalOpen,
  }
}

