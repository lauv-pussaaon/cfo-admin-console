export type PolicyContactLine = {
  label?: string
  value: string
  href?: string
}

export type PolicyBlock =
  | { type: 'paragraph'; children: string }
  | { type: 'bullets'; items: string[] }
  | { type: 'subsection'; title: string; blocks: PolicyBlock[] }
  | { type: 'table'; headers: string[]; rows: string[][] }
  | { type: 'contact'; lines: PolicyContactLine[] }
  | { type: 'signature'; title?: string; fields: string[]; checkboxLabel?: string }

export type PolicySection = {
  number: string
  title: string
  blocks: PolicyBlock[]
}

export type PolicyContent = {
  header: {
    title: string
    subtitle?: string
    provider?: string
    version?: string
    effectiveDate?: string
  }
  sections: PolicySection[]
  footerBlocks?: PolicyBlock[]
}
