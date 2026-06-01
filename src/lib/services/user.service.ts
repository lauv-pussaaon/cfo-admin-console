import type { User } from '../api/types'
import {
  createUser as createUserAPI,
  updateUser as updateUserAPI,
  deleteUser as deleteUserAPI,
  getUsers as getUsersAPI,
  getUserById as getUserByIdAPI,
} from '../api/auth'

export class UserService {
  async getUsers (): Promise<User[]> {
    const allUsers = await getUsersAPI()
    const allowedRoles = ['Admin', 'Dealer', 'Consult', 'Audit', 'Support']
    return allUsers.filter(user => allowedRoles.includes(user.role))
  }

  async getUserById (id: string): Promise<User | null> {
    return getUserByIdAPI(id)
  }

  async createUser (data: {
    username: string
    email: string
    password: string
    name: string
    avatar_url?: string | null
    role?: string
    is_approved?: boolean
  }): Promise<User> {
    return createUserAPI(data)
  }

  async updateUser (
    id: string,
    updates: Partial<{
      username: string
      email: string
      password?: string
      name: string
      avatar_url: string | null
      role: string
      is_approved: boolean
    }>
  ): Promise<User> {
    return updateUserAPI(id, updates)
  }

  async deleteUser (id: string): Promise<void> {
    return deleteUserAPI(id)
  }
}

export const userService = new UserService()
