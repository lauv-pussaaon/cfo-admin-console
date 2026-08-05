export type RegistrationEmailProfile = {
  organizationName: string
  phone: string
  hasVerification: boolean
  certifiedDate?: string | null
  certificationExpiry?: string | null
  verificationDocuments?: string[]
  yearExperiences: number
  industryLabels: string[]
}

export function formatRegistrationProfileTextLines (
  profile: RegistrationEmailProfile
): string[] {
  const lines = [
    `- องค์กร: ${profile.organizationName}`,
    `- เบอร์โทร: ${profile.phone}`,
    `- มีการรับรอง: ${profile.hasVerification ? 'ใช่' : 'ไม่'}`,
  ]

  if (profile.hasVerification) {
    lines.push(`- วันที่ได้รับการรับรอง: ${profile.certifiedDate || '-'}`)
    lines.push(`- วันหมดอายุการรับรอง: ${profile.certificationExpiry || '-'}`)
    const docs = profile.verificationDocuments ?? []
    lines.push(
      `- เอกสารการรับรอง: ${
        docs.length > 0 ? docs.map((url, i) => `[${i + 1}] ${url}`).join(' ') : '-'
      }`
    )
  }

  lines.push(`- ปีประสบการณ์: ${profile.yearExperiences}`)
  lines.push(
    `- อุตสาหกรรม: ${
      profile.industryLabels.length > 0
        ? profile.industryLabels.join(', ')
        : '-'
    }`
  )

  return lines
}

export function formatRegistrationProfileHtmlItems (
  profile: RegistrationEmailProfile,
  escapeHtml: (s: string) => string
): string {
  const items = [
    `<li>องค์กร: ${escapeHtml(profile.organizationName)}</li>`,
    `<li>เบอร์โทร: ${escapeHtml(profile.phone)}</li>`,
    `<li>มีการรับรอง: ${profile.hasVerification ? 'ใช่' : 'ไม่'}</li>`,
  ]

  if (profile.hasVerification) {
    items.push(
      `<li>วันที่ได้รับการรับรอง: ${escapeHtml(profile.certifiedDate || '-')}</li>`
    )
    items.push(
      `<li>วันหมดอายุการรับรอง: ${escapeHtml(profile.certificationExpiry || '-')}</li>`
    )
    const docs = profile.verificationDocuments ?? []
    items.push(
      `<li>เอกสารการรับรอง: ${
        docs.length > 0
          ? docs
              .map(
                (url, i) =>
                  `<a href="${escapeHtml(url)}" target="_blank" rel="noopener noreferrer">ไฟล์ ${i + 1}</a>`
              )
              .join(', ')
          : '-'
      }</li>`
    )
  }

  items.push(
    `<li>ปีประสบการณ์: ${escapeHtml(String(profile.yearExperiences))}</li>`
  )
  items.push(
    `<li>อุตสาหกรรม: ${escapeHtml(
      profile.industryLabels.length > 0
        ? profile.industryLabels.join(', ')
        : '-'
    )}</li>`
  )

  return items.join('\n    ')
}
