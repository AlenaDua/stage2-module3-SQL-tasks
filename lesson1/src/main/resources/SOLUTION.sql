-- Create Tables

-- Student
CREATE TABLE Student (
  id BIGINT PRIMARY KEY,
  name VARCHAR,
  birthday DATE,
  group_id INT
);

-- Subject
CREATE TABLE Subject (
  id BIGINT PRIMARY KEY,
  name VARCHAR,
  description VARCHAR,
  grade INT
);

-- PaymentType
CREATE TABLE PaymentType (
  id BIGINT PRIMARY KEY,
  name VARCHAR
);

-- Payment
CREATE TABLE Payment (
  id BIGINT PRIMARY KEY,
  type_id BIGINT,
  amount DECIMAL,
  student_id BIGINT,
  payment_date DATETIME
);

-- Mark
CREATE TABLE Mark (
  id BIGINT PRIMARY KEY,
  student_id BIGINT,
  subject_id BIGINT,
  mark INT
);


