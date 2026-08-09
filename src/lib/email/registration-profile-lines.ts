export type RegistrationEmailProfile = {
  organizationName: string
  phone: string
  yearExperiences: number
  industryLabels: string[]
}

export function formatRegistrationProfileTextLines (
  profile: RegistrationEmailProfile
): string[] {
  return [
    `- องค์กร: ${profile.organizationName}`,
    `- เบอร์โทร: ${profile.phone}`,
    `- ปีประสบการณ์: ${profile.yearExperiences}`,
    `- อุตสาหกรรม: ${
      profile.industryLabels.length > 0
        ? profile.industryLabels.join(', ')
        : '-'
    }`,
  ]
}

export function formatRegistrationProfileHtmlItems (
  profile: RegistrationEmailProfile,
  escapeHtml: (s: string) => string
): string {
  return [
    `<li>องค์กร: ${escapeHtml(profile.organizationName)}</li>`,
    `<li>เบอร์โทร: ${escapeHtml(profile.phone)}</li>`,
    `<li>ปีประสบการณ์: ${escapeHtml(String(profile.yearExperiences))}</li>`,
    `<li>อุตสาหกรรม: ${escapeHtml(
      profile.industryLabels.length > 0
        ? profile.industryLabels.join(', ')
        : '-'
    )}</li>`,
  ].join('\n    ')
}
