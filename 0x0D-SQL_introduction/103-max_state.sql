-- Script to display the max temperature of each state ordered by State name
USE hbtn_0c_0;

SELECT state, MAX(temperature) AS max_temp
FROM Temperatures
GROUP BY state
ORDER BY state;

