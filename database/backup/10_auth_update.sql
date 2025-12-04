-- CFO Beta App - User Authentication Setup
-- This script creates users that match the LoginModal options
-- Run this in Supabase SQL Editor

-- Clear existing users to start fresh
TRUNCATE TABLE users CASCADE;

-- Insert users that match the LoginModal display
INSERT INTO users (id, email, name, avatar_url, role) VALUES
  -- Project Owner
  ('550e8400-e29b-41d4-a716-446655440001', 'project_owner@cfo.com', 'Project Owner', null, 'project_owner'),
  
  -- Consultant
  ('550e8400-e29b-41d4-a716-446655440002', 'consultant@cfo.com', 'Senior Consultant', null, 'consultant'),
  
  -- Project Staff (multiple options)
  ('550e8400-e29b-41d4-a716-446655440003', 'staff1@cfo.com', 'Data Analyst', null, 'project_staff'),
  ('550e8400-e29b-41d4-a716-446655440004', 'staff2@cfo.com', 'Emission Tracker', null, 'project_staff'),
  ('550e8400-e29b-41d4-a716-446655440005', 'staff3@cfo.com', 'Sustainability Manager', null, 'project_staff');

-- Verify users were created
SELECT 'Users created:' as status, COUNT(*) as count FROM users;


