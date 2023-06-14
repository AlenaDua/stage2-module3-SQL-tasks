-- Alter Table Student
ALTER TABLE Student
MODIFY COLUMN birthday DATE NOT NULL;

-- Alter Table Mark
ALTER TABLE Mark
MODIFY COLUMN mark INT CHECK (mark >= 1 AND mark <= 10),
MODIFY COLUMN student_id BIGINT NOT NULL,
MODIFY COLUMN subject_id BIGINT NOT NULL;

-- Alter Table Subject
ALTER TABLE Subject
MODIFY COLUMN grade INT CHECK (grade >= 1 AND grade <= 5);

-- Alter Table PaymentType
ALTER TABLE PaymentType
ADD CONSTRAINT unique_name UNIQUE (name);

-- Alter Table Payment
ALTER TABLE Payment
MODIFY COLUMN type_id BIGINT NOT NULL,
MODIFY COLUMN amount DECIMAL NOT NULL,
MODIFY COLUMN payment_date DATETIME NOT NULL;
