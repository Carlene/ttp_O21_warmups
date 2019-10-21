-- YET ANOTHER CASE WHEN PROBLEM :D

-- Return the titles and descriptions of all films, with a new column "Holiday",
-- that contains the holiday referenced in the film, if any, otherwise is blank.
-- all holiday's welcome :) 

-- EXAMPLE: 
-- title: "Fiction Christmas" -> 'Christmas'
-- description: "The story of a chritmas elf who ...." --> 'Christmas'
-- "Something About Mary" --> ""

-- BONUS: return all of the holiday films first, and sort all films with their 
-- respective holiday category in alphabetical order.

-- BONUS BONUS:
-- Our marketing team is doing a holiday promo. All holiday films 1/2.
-- Can you return the same results, but with the price reflecting the discount?

-- Feel free to peek at your previous warmup to remind yourself of the syntax.

SELECT
	a.title
	,a.description
	,CASE 
	WHEN a.title ILIKE '%Christmas%' THEN 'Christmas'
	WHEN a.description ILIKE '%Christmas%' THEN 'Christmas'
	WHEN a.title ILIKE '%Halloween%' THEN 'Halloween'
	WHEN a.description ILIKE '%Halloween%' THEN 'Halloween'
	WHEN a.title ILIKE '%Midsummer%' THEN 'Midsummer'
	WHEN a.description ILIKE '%Midsummer%' THEN 'Midsummer'
	END as "Holiday Title"

FROM
	film a
JOIN film b
on a.title = b.title

ORDER BY
	3

-- DISCOUNT

WITH holiday_movies AS (SELECT
							title
							,description
							,rental_rate
							,CASE 
							WHEN title ILIKE '%Christmas%' THEN 'Christmas'
							WHEN description ILIKE '%Christmas%' THEN 'Christmas'
							WHEN title ILIKE '%Halloween%' THEN 'Halloween'
							WHEN description ILIKE '%Halloween%' THEN 'Halloween'
							WHEN title ILIKE '%Midsummer%' THEN 'Midsummer'
							WHEN description ILIKE '%Midsummer%' THEN 'Midsummer'
							END as holiday_title

						FROM
							film

						ORDER BY
							4)

SELECT 
	*
	,CASE 
	WHEN holiday_title IS NOT NULL THEN ROUND((rental_rate/2),2)
	END as new_price

FROM
	holiday_movies
