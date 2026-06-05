-- ===========================================
-- PostgreSQL Initial Setup (run as postgres superuser)
-- ===========================================
-- Creates ideacarb-admin database and cfo_admin_user for admin console.
-- Replace 'YOUR_PASSWORD' before running.
--
-- Usage: psql -h host -U postgres -f database/00_setup_postgres.sql
-- ===========================================

CREATE DATABASE "ideacarb-admin";

CREATE USER cfo_admin_user WITH ENCRYPTED PASSWORD 'YOUR_PASSWORD';

GRANT ALL PRIVILEGES ON DATABASE "ideacarb-admin" TO cfo_app;

\c "ideacarb-admin"

GRANT ALL ON SCHEMA public TO cfo_app;
GRANT CREATE ON SCHEMA public TO cfo_app;
