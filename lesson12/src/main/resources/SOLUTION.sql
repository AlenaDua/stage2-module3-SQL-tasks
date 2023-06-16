DELETE FROM Student WHERE grade >= 4;
DELETE FROM Student WHERE id IN (SELECT DISTINCT student_id FROM Mark WHERE mark < 4);
DELETE FROM PaymentType WHERE name = 'Daily';
DELETE FROM Payment WHERE type_id = (SELECT id FROM PaymentType WHERE name = 'Daily');
DELETE FROM Mark WHERE mark < 7;