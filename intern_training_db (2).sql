-- Database: intern_training_db
-- Description: Redesigned students table with proper data types and constraints

CREATE DATABASE IF NOT EXISTS intern_training_db;
USE intern_training_db;

-- --------------------------------------------------------
-- Step 1: Create students table with correct data types
-- --------------------------------------------------------

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT NOT NULL,
    phone_number VARCHAR(15)
) ENGINE=InnoDB;

-- --------------------------------------------------------
-- Step 2: Insert valid student records
-- --------------------------------------------------------

INSERT INTO students (first_name, last_name, email, age, phone_number) VALUES
('Joel',   'Louis',   'joel@gmail.com',   20, NULL),
('Anvesh', 'Bajirao', 'anvesh@gmail.com', 21, NULL),
('Prutha', 'Gomkale', 'prutha@gmail.com', 22, NULL),
('Rahul',  'Jain',    'rahul@gmail.com',  23, NULL),
('Aman',   'Singh',   'aman@gmail.com',   19, NULL);

-- --------------------------------------------------------
-- Step 3: Create second table to practice constraints
-- --------------------------------------------------------

CREATE TABLE students_details (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    date_of_birth DATE NOT NULL,
    phone_number VARCHAR(15)
) ENGINE=InnoDB;

-- --------------------------------------------------------
-- Step 4: Insert sample data (valid dates used)
-- --------------------------------------------------------

INSERT INTO students_details (student_name, email, date_of_birth, phone_number) VALUES
('Amit',   'amit@gmail.com',   '2002-05-10', NULL),
('Neha',   'neha@gmail.com',   '2001-08-15', NULL),
('Rahul',  'rahul@gmail.com',  '2000-12-20', NULL),
('Sneha',  'sneha@gmail.com',  '2003-03-25', NULL),
('Vishal', 'vishal@gmail.com', '2002-07-01', NULL);

-- --------------------------------------------------------
-- Step 5: Example of ALTER TABLE (learning purpose)
-- --------------------------------------------------------

ALTER TABLE students
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
