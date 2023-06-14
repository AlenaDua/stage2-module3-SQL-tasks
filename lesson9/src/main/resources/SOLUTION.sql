
SELECT id, name FROM Student WHERE id IN (SELECT student_id FROM Mark GROUP BY student_id HAVING AVG(mark) > 8);
SELECT id, name FROM Student WHERE id IN (SELECT student_id FROM Mark GROUP BY student_id HAVING MIN(mark) > 7);
SELECT id, name FROM Student WHERE id IN (SELECT student_id FROM Payment WHERE YEAR(payment_date) = 2019 GROUP BY student_id HAVING COUNT(*) > 2);