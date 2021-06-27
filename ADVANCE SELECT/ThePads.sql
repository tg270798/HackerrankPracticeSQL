SELECT CONCAT(Name,'(',left(Occupation,1),')') FROM Occupations ORDER BY Name
SELECT CONCAT('There are a total of ',count(Occupation), ' ', lower(Occupation),'s.') AS Results FROM Occupations
GROUP BY Occupation
ORDER BY Results
