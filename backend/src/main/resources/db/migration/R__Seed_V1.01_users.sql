-- R__Seed_users.sql

-- Clear the users table before seeding
TRUNCATE TABLE users RESTART IDENTITY CASCADE;

-- Insert multiple users (admin, doctor, patient)
INSERT INTO users (name, email, password, created_at, updated_at, updated_by)
VALUES
  ('Admin User', 'admin@clinic.com', 'testPass', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL),
  ('Doctor John', 'john@clinic.com', 'testPass', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL),
  ('Doctor Don', 'don@clinic.com', 'testPass', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL),
  ('Patient M', 'm@clinic.com', 'testPass', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL),
  ('Patient J', 'j@clinic.com', 'testPass', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL);
