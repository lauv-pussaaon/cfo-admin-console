export const CONTACT_PAGE_URL = 'https://www.ideacarb.com/th/contact'
export const SUPPORT_EMAIL = 'support@ideacarb.com'
export const ADMIN_CONSOLE_PUBLIC_URL = 'https://admin-console.ideacarb.com'
export const LINE_OA_QR_URL = `${ADMIN_CONSOLE_PUBLIC_URL}/images/ideacarb-line-oa.png`
export const BRAND_LOGO_URL = `${ADMIN_CONSOLE_PUBLIC_URL}/ideacarb-logo-square.png`
export const EMAIL_ACCENT_COLOR = '#0f766e'

export function escapeHtml (s: string): string {
  return s
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
}

export function contactFooterText (): string[] {
  return [
    'ติดต่อเรา:',
    `- เว็บไซต์: ${CONTACT_PAGE_URL}`,
    `- อีเมล: ${SUPPORT_EMAIL}`,
    '- LINE OA: สแกน QR Code ในอีเมลฉบับ HTML หรือดูที่หน้าติดต่อเรา',
  ]
}

export function contactFooterHtml (): string {
  return `
  <hr style="border:none;border-top:1px solid #e2e8f0;margin:24px 0;" />
  <p style="font-size:13px;color:#334155;margin:0 0 8px;"><strong>ติดต่อเรา</strong></p>
  <p style="font-size:13px;color:#475569;margin:0 0 4px;">
    เว็บไซต์:
    <a href="${escapeHtml(CONTACT_PAGE_URL)}" target="_blank" rel="noopener noreferrer">${escapeHtml(CONTACT_PAGE_URL)}</a>
  </p>
  <p style="font-size:13px;color:#475569;margin:0 0 12px;">
    อีเมล:
    <a href="mailto:${SUPPORT_EMAIL}">${SUPPORT_EMAIL}</a>
  </p>
  <p style="font-size:13px;color:#475569;margin:0 0 8px;">LINE OA</p>
  <img src="${escapeHtml(LINE_OA_QR_URL)}" alt="IdeaCarb LINE OA QR" width="140" height="140" style="display:block;border:0;border-radius:8px;" />
  `.trim()
}

export function brandedHeaderHtml (): string {
  return `
  <div style="margin:0 0 20px;">
    <img src="${escapeHtml(BRAND_LOGO_URL)}" alt="Ideacarb" width="56" height="56" style="display:block;border:0;border-radius:12px;" />
  </div>
  `.trim()
}

export function emailShellHtml (bodyHtml: string, options?: { branded?: boolean }): string {
  const header = options?.branded ? `${brandedHeaderHtml()}\n  ` : ''
  return `
<!DOCTYPE html>
<html>
<body style="font-family: system-ui, sans-serif; line-height: 1.5; color: #0f172a;">
  ${header}${bodyHtml}
  ${contactFooterHtml()}
  <p style="font-size:12px;color:#64748b;margin-top:20px;">อีเมลอัตโนมัติ ไม่ต้องตอบกลับ</p>
</body>
</html>`.trim()
}
