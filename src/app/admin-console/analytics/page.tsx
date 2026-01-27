'use client'

import { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import {
  Box,
  Container,
  Typography,
  CircularProgress,
  TextField,
  Paper,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Alert,
  Grid,
  Chip,
} from '@mui/material'
import Autocomplete from '@mui/material/Autocomplete'
import {
  LineChart,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  ResponsiveContainer,
} from 'recharts'
import { useAuth } from '@/contexts/AuthContext'
import { isAdmin } from '@/lib/permissions'
import { getUniqueDomains, getAnalyticsData, getTrafficData } from '@/lib/api/analytics'
import { getDateString, getDaysAgo, getToday, formatDateTime } from '@/lib/utils/datetime'
import type { AnalyticsDataPoint, TrafficRecord } from '@/types/analytics'
import AdminGuard from '@/components/admin/AdminGuard'

export default function AnalyticsPage() {
  const { user, isLoading: authLoading } = useAuth()
  const router = useRouter()

  // State
  const [domains, setDomains] = useState<string[]>([])
  const [selectedDomains, setSelectedDomains] = useState<string[]>([])
  const [startDate, setStartDate] = useState<string>(getDateString(getDaysAgo(7)))
  const [endDate, setEndDate] = useState<string>(getDateString(getToday()))
  const [analyticsData, setAnalyticsData] = useState<AnalyticsDataPoint[]>([])
  const [trafficData, setTrafficData] = useState<TrafficRecord[]>([])
  const [domainColors, setDomainColors] = useState<Map<string, string>>(new Map())
  const [loadingDomains, setLoadingDomains] = useState(true)
  const [loadingData, setLoadingData] = useState(true)
  const [loadingTraffic, setLoadingTraffic] = useState(true)
  const [error, setError] = useState<string | null>(null)

  // Generate unique colors for domains
  const generateColor = (index: number): string => {
    const colors = [
      '#10b981', // green
      '#3b82f6', // blue
      '#f59e0b', // orange
      '#8b5cf6', // purple
      '#ef4444', // red
      '#06b6d4', // cyan
      '#ec4899', // pink
      '#84cc16', // lime
      '#f97316', // orange-600
      '#6366f1', // indigo
      '#14b8a6', // teal
      '#a855f7', // purple-500
    ]
    return colors[index % colors.length]
  }

  // Initialize domain colors when domains are loaded
  useEffect(() => {
    if (domains.length > 0) {
      const colorMap = new Map<string, string>()
      domains.forEach((domain, index) => {
        colorMap.set(domain, generateColor(index))
      })
      setDomainColors(colorMap)
      // Select all domains by default
      setSelectedDomains([...domains])
    }
  }, [domains])

  // Redirect if not admin
  useEffect(() => {
    if (!authLoading && user && !isAdmin(user)) {
      router.push('/admin-console')
    }
  }, [user, authLoading, router])

  // Load domains on mount
  useEffect(() => {
    loadDomains()
  }, [])

  // Load analytics data when filters change
  useEffect(() => {
    if (startDate && endDate && selectedDomains.length > 0 && domains.length > 0) {
      loadAnalyticsData()
      loadTrafficData()
    }
  }, [selectedDomains, startDate, endDate, domains.length])

  const loadDomains = async () => {
    try {
      setLoadingDomains(true)
      const domainList = await getUniqueDomains()
      setDomains(domainList)
    } catch (err) {
      console.error('Error loading domains:', err)
      setError('Failed to load domains')
    } finally {
      setLoadingDomains(false)
    }
  }

  const loadAnalyticsData = async () => {
    try {
      setLoadingData(true)
      setError(null)
      
      // Fetch data for each selected domain
      const promises = selectedDomains.map(domain => 
        getAnalyticsData(startDate, endDate, domain)
      )
      
      const responses = await Promise.all(promises)
      
      // Combine and aggregate data by date and domain
      const combinedData = new Map<string, Map<string, { uniqueUsers: number, totalPageViews: number }>>()
      
      responses.forEach((response, index) => {
        const domain = selectedDomains[index]
        response.data.forEach((point) => {
          if (!combinedData.has(point.date)) {
            combinedData.set(point.date, new Map())
          }
          const dateData = combinedData.get(point.date)!
          dateData.set(domain, {
            uniqueUsers: point.uniqueUsers,
            totalPageViews: point.totalPageViews,
          })
        })
      })
      
      // Convert to array format with domain-specific keys
      const result: Array<Record<string, any>> = []
      const sortedDates = Array.from(combinedData.keys()).sort()
      
      sortedDates.forEach((date) => {
        const dateData = combinedData.get(date)!
        const row: Record<string, any> = { date }
        selectedDomains.forEach((domain) => {
          const domainData = dateData.get(domain)
          row[`${domain}_uniqueUsers`] = domainData?.uniqueUsers || 0
        })
        result.push(row)
      })
      
      setAnalyticsData(result as any)
    } catch (err) {
      console.error('Error loading analytics data:', err)
      setError('Failed to load analytics data')
      setAnalyticsData([])
    } finally {
      setLoadingData(false)
    }
  }

  const loadTrafficData = async () => {
    try {
      setLoadingTraffic(true)
      setError(null)
      
      // Fetch traffic data for all selected domains
      const promises = selectedDomains.map(domain => 
        getTrafficData(startDate, endDate, domain)
      )
      
      const responses = await Promise.all(promises)
      
      // Combine all traffic records
      const allTraffic: TrafficRecord[] = []
      responses.forEach((response) => {
        allTraffic.push(...response.data)
      })
      
      // Sort by date DESC (latest first)
      allTraffic.sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime())
      
      setTrafficData(allTraffic)
    } catch (err) {
      console.error('Error loading traffic data:', err)
      setError('Failed to load traffic data')
      setTrafficData([])
    } finally {
      setLoadingTraffic(false)
    }
  }


  // Format date for display
  const formatDisplayDate = (dateString: string): string => {
    const date = new Date(dateString)
    return date.toLocaleDateString('en-US', { month: 'short', day: 'numeric', year: 'numeric' })
  }

  if (authLoading) {
    return (
      <Box
        sx={{
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          minHeight: '100vh',
        }}
      >
        <CircularProgress />
      </Box>
    )
  }

  if (user && !isAdmin(user)) {
    return null
  }

  return (
    <AdminGuard>
      <Container maxWidth="xl" sx={{ py: 4 }}>
        <Typography variant="h4" component="h1" gutterBottom fontWeight="bold">
          Client Analytics
        </Typography>
        <Typography variant="body1" color="text.secondary" sx={{ mb: 4 }}>
          View usage tracking data across all client domains
        </Typography>

        {/* Filters */}
        <Paper sx={{ p: 3, mb: 4 }}>
          <Grid container spacing={3}>
            <Grid item xs={12} md={6}>
              <Autocomplete
                multiple
                options={domains}
                value={selectedDomains}
                onChange={(event, newValue) => {
                  setSelectedDomains(newValue)
                }}
                disabled={loadingDomains}
                renderInput={(params) => (
                  <TextField
                    {...params}
                    label="Domains"
                    placeholder="Select domains"
                  />
                )}
                renderOption={(props, option) => {
                  const { key, ...otherProps } = props
                  return (
                    <Box
                      component="li"
                      key={key}
                      {...otherProps}
                      sx={{ display: 'flex', alignItems: 'center', gap: 1 }}
                    >
                      <Box
                        sx={{
                          width: 12,
                          height: 12,
                          borderRadius: '50%',
                          backgroundColor: domainColors.get(option) || '#10b981',
                          flexShrink: 0,
                        }}
                      />
                      <Typography>{option}</Typography>
                    </Box>
                  )
                }}
                renderTags={(value, getTagProps) =>
                  value.map((option, index) => (
                    <Chip
                      {...getTagProps({ index })}
                      key={option}
                      label={
                        <Box sx={{ display: 'flex', alignItems: 'center', gap: 0.5 }}>
                          <Box
                            sx={{
                              width: 10,
                              height: 10,
                              borderRadius: '50%',
                              backgroundColor: domainColors.get(option) || '#10b981',
                              flexShrink: 0,
                            }}
                          />
                          {option}
                        </Box>
                      }
                    />
                  ))
                }
              />
            </Grid>
            <Grid item xs={12} md={3}>
              <TextField
                fullWidth
                label="Start Date"
                type="date"
                value={startDate}
                onChange={(e) => setStartDate(e.target.value)}
                InputLabelProps={{
                  shrink: true,
                }}
              />
            </Grid>
            <Grid item xs={12} md={3}>
              <TextField
                fullWidth
                label="End Date"
                type="date"
                value={endDate}
                onChange={(e) => setEndDate(e.target.value)}
                InputLabelProps={{
                  shrink: true,
                }}
              />
            </Grid>
          </Grid>
        </Paper>

        {/* Error Message */}
        {error && (
          <Alert severity="error" sx={{ mb: 4 }} onClose={() => setError(null)}>
            {error}
          </Alert>
        )}

        {/* Chart */}
        <Paper sx={{ p: 3, mb: 4 }}>
          <Typography variant="h6" gutterBottom>
            Daily Unique Users
          </Typography>
          {loadingData ? (
            <Box sx={{ display: 'flex', justifyContent: 'center', py: 8 }}>
              <CircularProgress />
            </Box>
          ) : analyticsData.length === 0 || selectedDomains.length === 0 ? (
            <Box sx={{ py: 8, textAlign: 'center' }}>
              <Typography color="text.secondary">
                {selectedDomains.length === 0 
                  ? 'Please select at least one domain' 
                  : 'No data available for the selected period'}
              </Typography>
            </Box>
          ) : (
            <ResponsiveContainer width="100%" height={400}>
              <LineChart data={analyticsData}>
                <CartesianGrid strokeDasharray="3 3" />
                <XAxis
                  dataKey="date"
                  tickFormatter={(value) => {
                    const date = new Date(value)
                    return date.toLocaleDateString('en-US', { month: 'short', day: 'numeric' })
                  }}
                />
                <YAxis label={{ value: 'Unique Users', angle: -90, position: 'insideLeft' }} />
                <Tooltip
                  labelFormatter={(value) => formatDisplayDate(value)}
                  formatter={(value: number, name: string) => {
                    // Extract domain from dataKey (format: domain_uniqueUsers)
                    const domain = name.replace('_uniqueUsers', '')
                    return [value, `${domain}: Unique Users`]
                  }}
                />
                <Legend
                  formatter={(value: string) => {
                    // Extract domain from dataKey
                    return value.replace('_uniqueUsers', '')
                  }}
                />
                {selectedDomains.map((domain) => {
                  const color = domainColors.get(domain) || '#10b981'
                  return (
                    <Line
                      key={domain}
                      type="monotone"
                      dataKey={`${domain}_uniqueUsers`}
                      stroke={color}
                      strokeWidth={2}
                      name={`${domain}_uniqueUsers`}
                      dot={{ r: 4 }}
                    />
                  )
                })}
              </LineChart>
            </ResponsiveContainer>
          )}
        </Paper>

        {/* Data Table */}
        <Paper sx={{ p: 3 }}>
          <Typography variant="h6" gutterBottom>
            Traffic Data
          </Typography>
          {loadingTraffic ? (
            <Box sx={{ display: 'flex', justifyContent: 'center', py: 4 }}>
              <CircularProgress />
            </Box>
          ) : trafficData.length === 0 ? (
            <Box sx={{ py: 4, textAlign: 'center' }}>
              <Typography color="text.secondary">No data available</Typography>
            </Box>
          ) : (
            <TableContainer>
              <Table>
                <TableHead>
                  <TableRow>
                    <TableCell><strong>Date</strong></TableCell>
                    <TableCell><strong>Domain</strong></TableCell>
                    <TableCell><strong>User Role</strong></TableCell>
                    <TableCell><strong>Page</strong></TableCell>
                  </TableRow>
                </TableHead>
                <TableBody>
                  {trafficData.map((row, index) => (
                    <TableRow key={`${row.date}-${row.domain}-${row.page}-${index}`} hover>
                      <TableCell>{formatDateTime(row.date)}</TableCell>
                      <TableCell>{row.domain}</TableCell>
                      <TableCell>{row.user_role || 'Anonymous'}</TableCell>
                      <TableCell>{row.page}</TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </TableContainer>
          )}
        </Paper>
      </Container>
    </AdminGuard>
  )
}
