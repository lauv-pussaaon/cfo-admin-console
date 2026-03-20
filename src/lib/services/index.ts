// Service-based API exports
export { OrganizationService, organizationService } from './organization.service'
export { UserService, userService } from './user.service'
export { FileUploadService, fileUploadService } from './file-upload.service'
export { AvatarUploadService, avatarUploadService } from './avatar-upload.service'
export { TemplateImageUploadService, templateImageUploadService } from './template-image-upload.service'
export { InvitationService, invitationService } from './invitation.service'
export { SupportAttachmentUploadService, supportAttachmentUploadService } from './support-attachment-upload.service'

// Re-export types
export type { User } from '../api/types'
