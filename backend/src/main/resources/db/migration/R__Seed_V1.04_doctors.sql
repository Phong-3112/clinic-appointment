-- R__Seed_doctors.sql

-- Clear the doctors table before seeding
TRUNCATE TABLE doctors RESTART IDENTITY CASCADE;

-- Insert multiple doctors
INSERT INTO doctors (user_id, specialization, created_at, updated_at, updated_by)
VALUES
  (2, 'Cardiology', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL),
  (3, 'Pediatrics', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL);
