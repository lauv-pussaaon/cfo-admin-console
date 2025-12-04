import { supabase } from '../supabase'
import type { SupabaseClient } from '@supabase/supabase-js'
import type { User } from '../api/types'
import {
  createUser as createUserAPI,
  updateUser as updateUserAPI,
  deleteUser as deleteUserAPI,
  getUsers as getUsersAPI,
  getUserById as getUserByIdAPI,
} from '../api/auth'

export class UserService {
  private supabase: SupabaseClient

  constructor(supabaseClient?: SupabaseClient) {
    this.supabase = supabaseClient || supabase
  }

  // Get all users (filtered to admin console roles only)
  async getUsers (): Promise<User[]> {
    const allUsers = await getUsersAPI()
    // Filter to only admin console roles
    const allowedRoles = ['Admin', 'Dealer', 'Consult', 'Audit']
    return allUsers.filter(user => allowedRoles.includes(user.role))
  }

  // Get user by ID
  async getUserById (id: string): Promise<User | null> {
    return getUserByIdAPI(id)
  }

  // Create user
  async createUser (data: {
    username: string
    email: string
    password: string
    name: string
    avatar_url?: string | null
    role?: string
  }): Promise<User> {
    return createUserAPI(data)
  }

  // Update user
  async updateUser (
    id: string,
    updates: Partial<{
      username: string
      email: string
      password?: string
      name: string
      avatar_url: string | null
      role: string
    }>
  ): Promise<User> {
    return updateUserAPI(id, updates)
  }

  // Delete user
  async deleteUser (id: string): Promise<void> {
    return deleteUserAPI(id)
  }
}

// Export singleton instance
export const userService = new UserService()

