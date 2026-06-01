-- ===========================================
-- PostgreSQL Initial Setup (run as postgres superuser)
-- ===========================================
-- Creates cfo_admin database and cfo_admin_user for admin console.
-- Replace 'YOUR_PASSWORD' before running.
--
-- Usage: psql -h host -U postgres -f database/00_setup_postgres.sql
-- ===========================================

CREATE DATABASE cfo_admin;

CREATE USER cfo_admin_user WITH ENCRYPTED PASSWORD 'YOUR_PASSWORD';

GRANT ALL PRIVILEGES ON DATABASE cfo_admin TO cfo_admin_user;

\c cfo_admin

GRANT ALL ON SCHEMA public TO cfo_admin_user;
GRANT CREATE ON SCHEMA public TO cfo_admin_user;
