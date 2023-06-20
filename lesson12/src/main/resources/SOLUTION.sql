DELETE FROM Subject WHERE id IN (SELECT id FROM Student WHERE grade >= 4);
DELETE FROM Subject WHERE grade >= 4;
DELETE FROM PaymentType WHERE name = 'Daily';
DELETE FROM Payment WHERE type_id = (SELECT id FROM PaymentType WHERE name = 'Daily');
DELETE FROM Mark WHERE mark < 7;