import type { SupabaseClient } from '@supabase/supabase-js'
import { supabase } from '../supabase'
import type { AccountType } from '@/types/account-types'
import type { OrganizationTrialRequest } from '@/types/database'
import {
  approveTrialRequest as approveTrialRequestAPI,
  createTrialRequest as createTrialRequestAPI,
  getTrialRequestById as getTrialRequestByIdAPI,
  getTrialRequests as getTrialRequestsAPI,
  type CreateTrialRequestInput,
} from '../api/organization-trial-requests'

export class TrialRequestService {
  private supabase: SupabaseClient

  constructor(supabaseClient?: SupabaseClient) {
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

  async approveTrialRequest (
    id: string,
    input: { reviewedBy: string; accountType: AccountType }
  ): Promise<OrganizationTrialRequest> {
    return approveTrialRequestAPI(id, input)
  }
}

export const trialRequestService = new TrialRequestService()
