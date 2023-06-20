INSERT INTO student (id, name, birthday, groupnumber) VALUES (1, 'John', '1994-11-03', 1);
INSERT INTO student (id, name, birthday, groupnumber) VALUES (2, 'Chris', '1994-11-03', 1);
INSERT INTO student (id, name, birthday, groupnumber) VALUES (3, 'Carl', '1994-11-03', 1);
INSERT INTO student (id, name, birthday, groupnumber) VALUES (4, 'Oliver', '1994-11-03', 2);
INSERT INTO student (id, name, birthday, groupnumber) VALUES (5, 'James', '1994-11-03', 2);
INSERT INTO student (id, name, birthday, groupnumber) VALUES (6, 'Lucas', '1994-11-03', 2);
INSERT INTO student (id, name, birthday, groupnumber) VALUES (7, 'Henry', '1994-11-03', 2);
INSERT INTO student (id, name, birthday, groupnumber) VALUES (8, 'Jacob', '1994-11-03', 3);
INSERT INTO student (id, name, birthday, groupnumber) VALUES (9, 'Logan', '1994-11-03', 3);

-- Insert New Subjects

INSERT INTO Subject (id, name, description, grade) VALUES (1, 'Art', 'Art and Music', 1);
INSERT INTO Subject (id, name, description, grade) VALUES (2, 'Music', 'Art and Music', 1);
INSERT INTO Subject (id, name, description, grade) VALUES (3, 'Geography', 'Geography and History', 2);
INSERT INTO Subject (id, name, description, grade) VALUES (4, 'History', 'Geography and History', 2);
INSERT INTO Subject (id, name, description, grade) VALUES (5, 'PE', 'PE and Math', 3);
INSERT INTO Subject (id, name, description, grade) VALUES (6, 'Math', 'PE and Math', 3);
INSERT INTO Subject (id, name, description, grade) VALUES (7, 'Science', 'Science and IT', 4);
INSERT INTO Subject (id, name, description, grade) VALUES (8, 'IT', 'Science and IT', 4);
INSERT INTO Subject (id, name, description, grade) VALUES (9, 'Subject1', '5th Grade Subject', 5);
INSERT INTO Subject (id, name, description, grade) VALUES (10, 'Subject2', '5th Grade Subject', 5);

-- Insert Payment Types

INSERT INTO paymenttype (id, name) VALUES (1, 'DAILY');
INSERT INTO paymenttype (id, name) VALUES (2, 'WEEKLY');
INSERT INTO paymenttype (id, name) VALUES (3, 'MONTHLY');

-- Insert Payments

INSERT INTO payment (id, type_id, amount, student_id, payment_date) VALUES (1, 2, 100.00, (SELECT id FROM Student WHERE name = 'John'), '2022-11-03');
INSERT INTO payment (id, type_id, amount, student_id, payment_date) VALUES (2, 3, 500.00, (SELECT id FROM Student WHERE name = 'Oliver'), '2022-11-03');
INSERT INTO payment (id, type_id, amount, student_id, payment_date) VALUES (3, 2, 150.00, (SELECT id FROM Student WHERE name = 'Henry'), '2022-11-03');
INSERT INTO payment (id, type_id, amount, student_id, payment_date) VALUES (4, 1, 10.00, (SELECT id FROM Student WHERE name = 'James'), '2022-11-03');

-- Insert Marks

INSERT INTO mark (id, student_id, subject_id, mark) VALUES (1, (SELECT id FROM Student WHERE name = 'Chris'), (SELECT id FROM Subject WHERE name = 'Art'), 8);
INSERT INTO mark (id, student_id, subject_id, mark) VALUES (2, (SELECT id FROM Student WHERE name = 'Oliver'), (SELECT id FROM Subject WHERE name = 'History'), 5);
INSERT INTO mark (id, student_id, subject_id, mark) VALUES (3, (SELECT id FROM Student WHERE name = 'James'), (SELECT id FROM Subject WHERE name = 'Geography'), 9);
INSERT INTO mark (id, student_id, subject_id, mark) VALUES (4, (SELECT id FROM Student WHERE name = 'Jacob'), (SELECT id FROM Subject WHERE name = 'Math'), 4);
INSERT INTO mark (id, student_id, subject_id, mark) VALUES (5, (SELECT id FROM Student WHERE name = 'Logan'), (SELECT id FROM Subject WHERE name = 'PE'), 9);
