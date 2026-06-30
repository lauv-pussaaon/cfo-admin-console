import type { SupabaseClient } from '@supabase/supabase-js'
import { supabase } from '../supabase'
import type { AccountType } from '@/types/account-types'
import type {
  OrganizationTrialRequest,
  OrganizationTrialRequestConsent,
} from '@/types/database'
import {
  approveTrialRequest as approveTrialRequestAPI,
  createTrialRequest as createTrialRequestAPI,
  getTrialRequestById as getTrialRequestByIdAPI,
  getTrialRequestConsent as getTrialRequestConsentAPI,
  getTrialRequests as getTrialRequestsAPI,
  updateTrialRequestStatus as updateTrialRequestStatusAPI,
  type CreateTrialRequestInput,
  type UpdateTrialRequestStatusInput,
} from '../api/organization-trial-requests'

export class TrialRequestService {
  private supabase: SupabaseClient

  constructor (supabaseClient?: SupabaseClient) {
    this.supabase = supabaseClient || supabase
  }

  async createTrialRequest (
    input: CreateTrialRequestInput
  ): Promise<OrganizationTrialRequest> {
    return createTrialRequestAPI(input)
  }

  async getTrialRequests (): Promise<OrganizationTrialRequest[]> {
    return getTrialRequestsAPI()
  }

  async getTrialRequestById (id: string): Promise<OrganizationTrialRequest | null> {
    return getTrialRequestByIdAPI(id)
  }

  async getTrialRequestConsent (
    trialRequestId: string
  ): Promise<OrganizationTrialRequestConsent | null> {
    return getTrialRequestConsentAPI(trialRequestId)
  }

  async updateTrialRequestStatus (
    id: string,
    input: UpdateTrialRequestStatusInput
  ): Promise<OrganizationTrialRequest> {
    return updateTrialRequestStatusAPI(id, input)
  }

  async approveTrialRequest (
    id: string,
    input: { reviewedBy: string; accountType: AccountType }
  ): Promise<OrganizationTrialRequest> {
    return approveTrialRequestAPI(id, input)
  }
}

export const trialRequestService = new TrialRequestService()
