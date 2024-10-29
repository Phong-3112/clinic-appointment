-- R__Seed_roles.sql

-- Clear the roles table before seeding
TRUNCATE TABLE roles RESTART IDENTITY CASCADE;

-- Insert roles
INSERT INTO roles (role_name, created_at, updated_at, updated_by)
VALUES
  ('admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL),
  ('doctor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL),
  ('patient', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL);
