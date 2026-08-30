/** Shared premium admin-console page + DataGrid chrome (source: users page). */

export const adminPageShellSx = {
  flexGrow: 1,
  width: '100%',
  py: 3,
} as const

export const adminBackButtonSx = {
  mb: 2,
  textTransform: 'none',
  color: 'text.secondary',
  px: 0,
  '&:hover': { backgroundColor: 'transparent', color: 'text.primary' },
} as const

export const adminPageTitleSx = {
  fontWeight: 600,
  letterSpacing: '-0.02em',
} as const

export const adminPrimaryButtonSx = {
  textTransform: 'none',
  borderRadius: 2,
  boxShadow: 'none',
  px: 2.5,
  '&:hover': { boxShadow: 'none' },
} as const

export const adminFilterControlSx = {
  '& .MuiOutlinedInput-root': { borderRadius: 2 },
} as const

export const adminSearchFieldSx = {
  minWidth: 280,
  maxWidth: 420,
  flex: '1 1 280px',
  '& .MuiOutlinedInput-root': { borderRadius: 2 },
} as const

export const adminGhostIconButtonSx = {
  primary: {
    color: 'text.secondary',
    '&:hover': { backgroundColor: 'action.hover', color: 'primary.main' },
    '&.Mui-disabled': { color: 'text.disabled' },
  },
  error: {
    color: 'text.secondary',
    '&:hover': { backgroundColor: 'action.hover', color: 'error.main' },
    '&.Mui-disabled': { color: 'text.disabled' },
  },
} as const

export const adminQuietChipSx = {
  fontWeight: 500,
  borderRadius: 1.5,
  height: 28,
} as const

export const adminDataGridPaperSx = {
  minHeight: 520,
  width: '100%',
  backgroundColor: 'background.paper',
  border: '1px solid',
  borderColor: 'divider',
  borderRadius: 2,
  overflow: 'hidden',
  overflowX: 'auto',
} as const

export const adminDataGridProps = {
  disableColumnMenu: true,
  rowHeight: 68,
  columnHeaderHeight: 52,
} as const

export const adminDataGridSx = {
  border: 'none',
  minHeight: 520,
  '& .MuiDataGrid-columnHeaders': {
    backgroundColor: 'grey.50',
    borderBottom: '1px solid',
    borderColor: 'divider',
  },
  '& .MuiDataGrid-columnHeaderTitle': {
    fontSize: '0.875rem',
    fontWeight: 600,
    color: 'text.secondary',
    letterSpacing: '0.02em',
  },
  '& .MuiDataGrid-cell': {
    borderBottom: '1px solid',
    borderColor: 'divider',
    display: 'flex',
    alignItems: 'center',
    py: 0,
  },
  '& .MuiDataGrid-row:hover': {
    backgroundColor: 'action.hover',
  },
  '& .MuiDataGrid-footerContainer': {
    borderTop: '1px solid',
    borderColor: 'divider',
    backgroundColor: 'background.paper',
  },
  '& .MuiDataGrid-columnSeparator': {
    display: 'none',
  },
} as const
