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
	WHEN a.title ILIKE '%Hanukkah%' THEN 'Hanukkah'
	WHEN a.description ILIKE '%Hanukkah%' THEN 'Hanukkah'
	WHEN a.title ILIKE '%Kwanzaa%' THEN 'Kwanzaa'
	WHEN a.description ILIKE '%Kwanzaa%' THEN 'Kwanzaa'
	END as "Holiday Title"

FROM
	film a
JOIN film b
on a.title = b.title




