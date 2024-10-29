drop table if exists patients cascade;

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,  -- Foreign key to Users
  medical_history TEXT,  -- Patient's medical history (optional)
  default_doctor_id INTEGER REFERENCES doctors(id) ON DELETE SET NULL,  -- Main charge doctor (optional)
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_by INTEGER REFERENCES users(id) -- Tracks who updated this record
);

-- Index on patients' default doctor for faster doctor-patient queries
CREATE INDEX idx_patients_default_doctor ON patients(default_doctor_id);
