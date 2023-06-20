
SELECT * FROM Payment WHERE amount >= 500;
SELECT * FROM Student WHERE birthday <= DATEADD(year, -20, CURRENT_TIMESTAMP);
SELECT * FROM Student WHERE groupnumber = 10 AND birthday >= DATEADD(year, -20, CURRENT_TIMESTAMP());
SELECT * FROM Student WHERE name = 'Mike' OR groupnumber IN (4, 5, 6);
SELECT * FROM Payment WHERE payment_date >= DATEADD(month, -8, CURRENT_TIMESTAMP());
SELECT * FROM Student WHERE name LIKE 'A%';
SELECT * FROM Student WHERE (name = 'Roxi' AND groupnumber = 4) OR (name = 'Tallie' AND groupnumber = 9);

