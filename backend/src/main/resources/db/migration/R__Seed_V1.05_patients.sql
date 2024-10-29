-- R__Seed_patients.sql

-- Clear the patients table before seeding
TRUNCATE TABLE patients RESTART IDENTITY CASCADE;

-- Insert multiple patients
INSERT INTO patients (user_id, medical_history, default_doctor_id, created_at, updated_at, updated_by)
VALUES
  (4, 'No allergies', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL),
  (5, 'Diabetes', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL);
