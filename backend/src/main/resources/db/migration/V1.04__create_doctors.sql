drop table if exists doctors cascade;

-- Create Doctors table (subtype of Users)
CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,  -- Foreign key to Users
  specialization VARCHAR(100),  -- Doctor's specialization (optional)
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_by INTEGER REFERENCES users(id) -- Tracks who updated this record
);
