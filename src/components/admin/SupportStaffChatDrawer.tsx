'use client'

import { useCallback, useEffect, useMemo, useRef, useState } from 'react'
import {
  Alert,
  Avatar,
  Box,
  Drawer,
  IconButton,
  Paper,
  TextField,
  Typography,
} from '@mui/material'
import {
  Close as CloseIcon,
  Send as SendIcon,
} from '@mui/icons-material'
import { authenticatedAdminFetch } from '@/lib/api/admin-fetch'

interface SupportStaffChatDrawerProps {
  open: boolean
  onClose: () => void
  organization: { id: string; name: string } | null
  onRead?: (organizationId: string) => void
}

interface StaffChatMessage {
  id: string
  body: string
  sender_type: 'client' | 'staff'
  staff_user_id: string | null
  staff_name: string | null
  staff_avatar_url: string | null
  staff_email: string | null
  client_user_id: string | null
  client_display_name: string | null
  client_avatar_url: string | null
  created_at: string
}

function formatTime (timestamp: string): string {
  return new Date(timestamp).toLocaleTimeString('en-US', {
    hour: '2-digit',
    minute: '2-digit',
    hour12: true,
  })
}

function getInitial (value: string | null | undefined, fallback: string): string {
  const normalized = (value ?? '').trim()
  return normalized ? normalized.charAt(0).toUpperCase() : fallback
}

function LoadingDots () {
  return (
    <Box sx={{ display: 'inline-flex', alignItems: 'center', gap: 0.25 }}>
      {[0, 1, 2].map((index) => (
        <Box
          key={index}
          component="span"
          sx={{
            width: 4,
            height: 4,
            borderRadius: '50%',
            bgcolor: 'text.secondary',
            opacity: 0.35,
            animation: 'chatDotPulse 1.2s ease-in-out infinite',
            animationDelay: `${index * 0.16}s`,
            '@keyframes chatDotPulse': {
              '0%, 100%': { opacity: 0.25, transform: 'translateY(0)' },
              '50%': { opacity: 0.9, transform: 'translateY(-1px)' },
            },
          }}
        />
      ))}
    </Box>
  )
}

export default function SupportStaffChatDrawer ({
  open,
  onClose,
  organization,
  onRead,
}: SupportStaffChatDrawerProps) {
  const [messages, setMessages] = useState<StaffChatMessage[]>([])
  const [loading, setLoading] = useState(false)
  const [sending, setSending] = useState(false)
  const [input, setInput] = useState('')
  const [error, setError] = useState<string | null>(null)
  const messagesEndRef = useRef<HTMLDivElement>(null)

  const currentUserId = useMemo(
    () => (typeof window !== 'undefined' ? localStorage.getItem('cfo_user_id') : null),
    []
  )

  const loadMessages = useCallback(async (options?: { silent?: boolean }) => {
    if (!organization?.id) return
    const silent = options?.silent ?? false

    try {
      if (!silent) {
        setLoading(true)
      }
      setError(null)
      const response = await authenticatedAdminFetch(
        `/api/support/staff/messages?organization_id=${encodeURIComponent(organization.id)}`
      )
      if (!response.ok) {
        throw new Error('Failed to fetch messages')
      }
      const payload = await response.json()
      setMessages(payload.data ?? [])
    } catch (err) {
      console.error(err)
      setError('ไม่สามารถโหลดข้อความได้')
    } finally {
      if (!silent) {
        setLoading(false)
      }
    }
  }, [organization?.id])

  const markRead = useCallback(async () => {
    if (!organization?.id) return
    try {
      await authenticatedAdminFetch('/api/support/staff/mark-read', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ organization_id: organization.id }),
      })
      onRead?.(organization.id)
    } catch (err) {
      console.error('Failed to mark support messages as read:', err)
    }
  }, [organization?.id, onRead])

  useEffect(() => {
    if (!open || !organization?.id) return
    loadMessages()
    markRead()

    const poller = window.setInterval(() => {
      loadMessages({ silent: true })
    }, 5000)

    return () => {
      window.clearInterval(poller)
    }
  }, [open, organization?.id, loadMessages, markRead])

  useEffect(() => {
    messagesEndRef.current?.scrollIntoView({ behavior: 'smooth' })
  }, [messages, open])

  const sendMessage = async () => {
    if (!organization?.id) return
    const body = input.trim()
    if (!body) return

    const optimisticMessage: StaffChatMessage = {
      id: `temp-${crypto.randomUUID()}`,
      body,
      sender_type: 'staff',
      staff_user_id: currentUserId,
      staff_name: 'You',
      staff_avatar_url: null,
      staff_email: null,
      client_user_id: null,
      client_display_name: null,
      client_avatar_url: null,
      created_at: new Date().toISOString(),
    }

    try {
      setSending(true)
      setError(null)
      setMessages((prev) => [...prev, optimisticMessage])
      const response = await authenticatedAdminFetch('/api/support/staff/messages', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          organization_id: organization.id,
          body,
        }),
      })

      if (!response.ok) {
        throw new Error('Failed to send message')
      }

      setInput('')
      await loadMessages({ silent: true })
      await markRead()
    } catch (err) {
      console.error(err)
      setMessages((prev) => prev.filter((message) => message.id !== optimisticMessage.id))
      setError('ส่งข้อความไม่สำเร็จ')
    } finally {
      setSending(false)
    }
  }

  return (
    <Drawer
      anchor="right"
      open={open}
      onClose={onClose}
      sx={{
        zIndex: 1400,
        '& .MuiDrawer-paper': {
          width: { xs: '100%', sm: 430 },
          maxWidth: '100%',
          height: '100%',
          display: 'flex',
          flexDirection: 'column',
        },
      }}
    >
      <Box sx={{ p: 2, borderBottom: 1, borderColor: 'divider' }}>
        <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
          <Box>
            <Typography variant="h6" sx={{ fontWeight: 700 }}>
              Support Chat
            </Typography>
            <Typography variant="body2" color="text.secondary">
              {organization?.name ?? '-'}
            </Typography>
          </Box>
          <IconButton size="small" onClick={onClose}>
            <CloseIcon />
          </IconButton>
        </Box>
      </Box>

      <Box sx={{ flex: 1, overflowY: 'auto', p: 2 }}>
        {messages.length === 0 && !loading ? (
          <Box sx={{ py: 6, textAlign: 'center' }}>
            <Typography color="text.secondary">ยังไม่มีข้อความในแชทนี้</Typography>
          </Box>
        ) : (
          <Box sx={{ display: 'flex', flexDirection: 'column', gap: 2 }}>
            {messages.map((message) => {
              const isStaff = message.sender_type === 'staff'
              const senderName = isStaff
                ? (message.staff_name || message.staff_email || 'Support')
                : (message.client_display_name || 'Client')
              const avatarSrc = isStaff ? message.staff_avatar_url : message.client_avatar_url
              const alignRight = isStaff && message.staff_user_id === currentUserId

              return (
                <Box
                  key={message.id}
                  sx={{
                    display: 'flex',
                    justifyContent: alignRight ? 'flex-end' : 'flex-start',
                    alignItems: 'flex-start',
                    gap: 1,
                  }}
                >
                  {!alignRight && (
                    <Avatar src={avatarSrc ?? undefined} sx={{ width: 28, height: 28 }}>
                      {getInitial(senderName, isStaff ? 'S' : 'C')}
                    </Avatar>
                  )}
                  <Box sx={{ maxWidth: '78%', display: 'flex', flexDirection: 'column', alignItems: alignRight ? 'flex-end' : 'flex-start' }}>
                    <Typography variant="caption" color="text.secondary" sx={{ mb: 0.5 }}>
                      {senderName}
                    </Typography>
                    <Paper
                      elevation={0}
                      sx={{
                        p: 1.4,
                        borderRadius: 2,
                        bgcolor: alignRight ? 'primary.main' : 'grey.100',
                        color: alignRight ? 'primary.contrastText' : 'text.primary',
                      }}
                    >
                      <Typography variant="body2">{message.body}</Typography>
                    </Paper>
                    <Typography variant="caption" color="text.secondary" sx={{ mt: 0.5 }}>
                      {formatTime(message.created_at)}
                    </Typography>
                  </Box>
                  {alignRight && (
                    <Avatar src={avatarSrc ?? undefined} sx={{ width: 28, height: 28 }}>
                      {getInitial(senderName, 'Y')}
                    </Avatar>
                  )}
                </Box>
              )
            })}
            <div ref={messagesEndRef} />
          </Box>
        )}
      </Box>

      <Box sx={{ p: 2, borderTop: 1, borderColor: 'divider' }}>
        {error && (
          <Alert severity="error" sx={{ mb: 1.5 }}>
            {error}
          </Alert>
        )}
        <Box
          sx={{
            minHeight: 18,
            mb: 1,
            display: 'flex',
            alignItems: 'center',
          }}
        >
          {(sending || loading) && (
            <Typography
              variant="caption"
              color="text.secondary"
              sx={{ display: 'inline-flex', alignItems: 'center', gap: 0.75 }}
            >
              {sending ? 'Sending' : 'Refreshing'}
              <LoadingDots />
            </Typography>
          )}
        </Box>
        <Box sx={{ display: 'flex', gap: 1 }}>
          <TextField
            fullWidth
            multiline
            maxRows={4}
            size="small"
            placeholder="พิมพ์ข้อความ..."
            value={input}
            onChange={(event) => setInput(event.target.value)}
            onKeyDown={(event) => {
              if (event.key === 'Enter' && !event.shiftKey) {
                event.preventDefault()
                sendMessage()
              }
            }}
            disabled={sending}
          />
          <IconButton
            color="primary"
            onClick={sendMessage}
            disabled={sending || !input.trim()}
            sx={{
              bgcolor: 'primary.main',
              color: 'primary.contrastText',
              '&:hover': { bgcolor: 'primary.dark' },
              '&.Mui-disabled': {
                bgcolor: 'action.disabledBackground',
                color: 'action.disabled',
              },
            }}
          >
            <SendIcon />
          </IconButton>
        </Box>
      </Box>
    </Drawer>
  )
}

