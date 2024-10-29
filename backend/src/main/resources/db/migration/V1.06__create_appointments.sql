drop table if exists appointments cascade;

-- Create Appointments table
CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  patient_id INTEGER REFERENCES patients(id) ON DELETE CASCADE,  -- Foreign key to Patients
  doctor_id INTEGER REFERENCES doctors(id) ON DELETE CASCADE,  -- Foreign key to Doctors
  appointment_time TIMESTAMP NOT NULL,  -- Scheduled time of appointment
  status VARCHAR(20) NOT NULL DEFAULT 'pending',  -- 'pending', 'confirmed', 'canceled'
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_by INTEGER REFERENCES users(id)  -- Tracks who updated this record
);

-- Index on appointments by doctor and appointment time for quick scheduling queries
CREATE INDEX idx_appointments_doctor_time ON appointments(doctor_id, appointment_time);
