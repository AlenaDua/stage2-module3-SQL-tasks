
SELECT * FROM Payment WHERE amount >= 500;
SELECT * FROM Student WHERE birthday <= DATEADD(year, -20, GETDATE());
SELECT * FROM Student WHERE group_id = 10 AND birthday >= DATEADD(year, -20, GETDATE());
SELECT * FROM Student WHERE name = 'Mike' OR group_id IN (4, 5, 6);
SELECT * FROM Payment WHERE payment_date >= DATEADD(month, -8, GETDATE());
SELECT * FROM Student WHERE name LIKE 'A%';
SELECT * FROM Student WHERE (name = 'Roxi' AND group_id = 4) OR (name = 'Tallie' AND group_id = 9);

