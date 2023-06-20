-- Alter Table Student
ALTER TABLE Student
ALTER COLUMN birthday DATE NOT NULL;

-- Alter Table Mark
ALTER TABLE Mark
add constraint ck_mark_check CHECK (MARK BETWEEN 1 AND 10);

ALTER TABLE Mark
ALTER COLUMN student_id BIGINT NOT NULL;

ALTER TABLE Mark
ALTER COLUMN subject_id BIGINT NOT NULL;

-- Alter Table Subject
ALTER TABLE Subject
add constraint ck_grade_check CHECK (grade between 1 AND 5);

-- Alter Table PaymentType
ALTER TABLE PaymentType
ADD CONSTRAINT ck_unique_name UNIQUE (name);

-- Alter Table Payment
ALTER TABLE Payment
ALTER COLUMN type_id BIGINT NOT NULL;

ALTER TABLE Payment
ALTER COLUMN amount DECIMAL NOT NULL;

ALTER TABLE Payment
ALTER COLUMN payment_date DATETIME NOT NULL;
