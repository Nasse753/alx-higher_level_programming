-- Import the table dump into hbtn_0c_0 database
-- You can use the following command in your terminal:
-- cat dump_file.sql | mysql -hlocalhost -uroot -p hbtn_0c_0

-- Script to display the top 3 cities with the highest average temperatures during July and August
USE hbtn_0c_0;

SELECT city, AVG(temperature) as avg_temp
FROM Temperatures
WHERE month IN (7, 8) -- July and August
GROUP BY city
ORDER BY avg_temp DESC
LIMIT 3;
