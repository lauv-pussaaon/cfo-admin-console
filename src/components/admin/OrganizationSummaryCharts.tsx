'use client'

import { useMemo, type ReactNode } from 'react'
import { Box, CircularProgress, Paper, Typography, useTheme } from '@mui/material'
import {
  Bar,
  BarChart,
  CartesianGrid,
  Cell,
  Pie,
  PieChart,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from 'recharts'
import type { AccountType } from '@/types/account-types'
import {
  buildOrganizationSummary,
  type MonthCount,
  type OrganizationSummarySource,
} from '@/lib/utils/organization-summary'

const TYPE_COLOR: Record<AccountType, 'primary' | 'success' | 'info' | 'secondary' | 'warning'> = {
  annual_member: 'primary',
  trial: 'success',
  demo: 'info',
  employee: 'secondary',
  project: 'warning',
}

interface OrganizationSummaryChartsProps {
  organizations: OrganizationSummarySource[]
  loading: boolean
}

export default function OrganizationSummaryCharts ({
  organizations,
  loading,
}: OrganizationSummaryChartsProps) {
  const theme = useTheme()
  const summary = useMemo(
    () => buildOrganizationSummary(organizations),
    [organizations],
  )
  const typeColor = (accountType: AccountType) => theme.palette[TYPE_COLOR[accountType]].main
  const slices = summary.byType.filter((row) => row.count > 0)

  return (
    <Box
      sx={{
        display: 'grid',
        gridTemplateColumns: { xs: '1fr', md: 'repeat(3, minmax(0, 1fr))' },
        gap: 2,
        mb: 3,
      }}
    >
      <SummaryCard title="จำนวนตามประเภทบัญชี" loading={loading}>
        <Box sx={{ display: 'flex', flexDirection: 'column', alignItems: 'center', minHeight: 220 }}>
          <Box sx={{ position: 'relative', width: 168, height: 168, flexShrink: 0 }}>
            <ResponsiveContainer width="100%" height="100%">
              <PieChart>
                <Pie
                  data={slices as unknown as Array<Record<string, unknown>>}
                  dataKey="count"
                  nameKey="label"
                  innerRadius="62%"
                  outerRadius="88%"
                  paddingAngle={slices.length > 1 ? 1 : 0}
                  stroke={theme.palette.background.paper}
                >
                  {slices.map((row) => (
                    <Cell key={row.accountType} fill={typeColor(row.accountType)} />
                  ))}
                </Pie>
                <Tooltip formatter={(value, name) => [value ?? 0, name]} />
              </PieChart>
            </ResponsiveContainer>
            <Box
              sx={{
                position: 'absolute',
                inset: 0,
                display: 'flex',
                flexDirection: 'column',
                alignItems: 'center',
                justifyContent: 'center',
                pointerEvents: 'none',
              }}
            >
              <Typography variant="h6" sx={{ lineHeight: 1.1 }}>{summary.total}</Typography>
              <Typography variant="body2" color="text.secondary">ทั้งหมด</Typography>
            </Box>
          </Box>
          <Box component="ul" sx={{ listStyle: 'none', m: 0, mt: 1, p: 0, width: '100%' }}>
            {summary.byType.map((row) => (
              <Box
                component="li"
                key={row.accountType}
                sx={{ display: 'flex', alignItems: 'center', gap: 1, py: 0.25 }}
              >
                <Box
                  sx={{
                    width: 10,
                    height: 10,
                    borderRadius: 0.5,
                    bgcolor: typeColor(row.accountType),
                    flexShrink: 0,
                  }}
                />
                <Typography variant="body2" sx={{ flex: 1, minWidth: 0 }}>
                  {row.label}
                </Typography>
                <Typography variant="body2">{row.count}</Typography>
              </Box>
            ))}
          </Box>
        </Box>
      </SummaryCard>

      <MonthBarCard
        title="เริ่มแพ็กเกจ"
        subtitle="6 เดือนที่ผ่านมาถึงเดือนนี้"
        series={summary.packageStarts}
        color={theme.palette.primary.main}
        loading={loading}
      />
      <MonthBarCard
        title="สิ้นสุดแพ็กเกจ"
        subtitle="เดือนนี้ถึง 6 เดือนข้างหน้า"
        caption="ไม่รวมองค์กรที่ไม่มีวันหมดอายุ"
        series={summary.packageEnds}
        color={theme.palette.warning.main}
        loading={loading}
      />
    </Box>
  )
}

function MonthBarCard ({
  title,
  subtitle,
  caption,
  series,
  color,
  loading,
}: {
  title: string
  subtitle: string
  caption?: string
  series: MonthCount[]
  color: string
  loading: boolean
}) {
  const theme = useTheme()
  const maxCount = series.reduce((max, row) => Math.max(max, row.count), 0)

  return (
    <SummaryCard title={title} subtitle={subtitle} caption={caption} loading={loading}>
      <ResponsiveContainer width="100%" height={220}>
        <BarChart data={series} margin={{ top: 8, right: 4, left: 0, bottom: 4 }}>
          <CartesianGrid stroke={theme.palette.divider} vertical={false} />
          <XAxis
            dataKey="label"
            interval={0}
            angle={-40}
            textAnchor="end"
            height={58}
            tick={{ fill: theme.palette.text.secondary, fontSize: 11 }}
            axisLine={{ stroke: theme.palette.divider }}
            tickLine={false}
          />
          <YAxis
            allowDecimals={false}
            width={32}
            domain={[0, Math.max(maxCount, 1)]}
            tick={{ fill: theme.palette.text.secondary, fontSize: 11 }}
            axisLine={false}
            tickLine={false}
          />
          <Tooltip
            formatter={(value) => [value ?? 0, 'จำนวน']}
            labelFormatter={(_label, payload) => {
              const row = payload?.[0]?.payload as MonthCount | undefined
              return row?.tooltipLabel ?? ''
            }}
          />
          <Bar dataKey="count" fill={color} maxBarSize={28} radius={[2, 2, 0, 0]} />
        </BarChart>
      </ResponsiveContainer>
    </SummaryCard>
  )
}

function SummaryCard ({
  title,
  subtitle,
  caption,
  loading,
  children,
}: {
  title: string
  subtitle?: string
  caption?: string
  loading: boolean
  children: ReactNode
}) {
  return (
    <Paper
      elevation={0}
      sx={{
        p: 3,
        border: '1px solid',
        borderColor: 'divider',
        borderRadius: 2,
        minWidth: 0,
      }}
    >
      <Typography variant="h6">{title}</Typography>
      {subtitle && (
        <Typography variant="body2" color="text.secondary">
          {subtitle}
        </Typography>
      )}
      {loading ? (
        <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: 'center', height: 220 }}>
          <CircularProgress size={28} />
        </Box>
      ) : children}
      {caption && (
        <Typography variant="body2" color="text.secondary" sx={{ mt: 1 }}>
          {caption}
        </Typography>
      )}
    </Paper>
  )
}
