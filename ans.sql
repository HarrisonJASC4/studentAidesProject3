-- JUST FYI, THE SCHEMA IS
-- vending_machine (id INTEGER PRIMARY KEY, name VARCHAR, amount INTEGER, type CHAR, cost FLOAT)

-- Show all of the rows of data
SELECT * FROM vending_machine

-- Show only rows that have a type of “candy”
    SELECT * FROM vending_machine where type = 'candy'

-- Show all rows in descending order by name
    SELECT * FROM vending_machine ORDER BY name DESC 

-- Show only rows that have a type of “liquid” AND have an amount under 5
    SELECT * FROM vending_machine where type = 'liquid' , amount < 5

-- Show only rows that have a type of “snack” in ascending order by cost
    SELECT * FROM vending_machine where type = 'snack' ORDER By cost ASC

-- BONUS: Create a new table named “snacks” with the result of the last command!
    
    -- Extras
    SELECT * FROM vending_machine where name, cost * amount 
    SELECT type FROM vending_machine GROUP BY type