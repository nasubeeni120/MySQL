SELECT * FROM classicmodels.suits;

SELECT 
suit_name, rank_name
FROM suits CROSS JOIN ranks
ORDER BY
suit_name, rank_name;