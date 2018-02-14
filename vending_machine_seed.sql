DROP TABLE IF EXISTS vending_machine;
CREATE TABLE vending_machine
(
    id INTEGER PRIMARY KEY,
    name VARCHAR,
    amount INTEGER,
    type CHAR,
    cost FLOAT
);

INSERT INTO vending_machine
    (name, amount, type, cost)
VALUES
    ("banana", 3, 'fruit', .6),
    ("water bottle", 1, 'liquid', 1.00),
    ("tea", 2, 'liquid', 1.50),
    ("milk", 4, 'liquid', 2.00),
    ("coffee", 6, 'liquid', 2.50),
    ("chocolate", 2, 'candy', 2.00),
    ("popcorn", 17, 'snack', 1.25),
    ("bubble gum", 13, 'candy', .50),
    ("gummies", 10, 'candy', 1.00),
    ("chips", 9, 'snack', 1.30),
    ("pop tarts", 7, 'snack', 2.45),
    ("trail mix", 5, 'snack', 5.00);

--     Show all of the rows of data
-- Show only rows that have a type of “candy”
-- Show all rows in descending order by name
-- Show only rows that have a type of “liquid” AND have an amount under 5
-- Show only rows that have a type of “snack” in ascending order by cost
-- BONUS: Create a new table named “snacks” with the result of the last command!
-- Show the name and quantity of the least expensive item
-- Show the count of different items (basically the total number of rows)
-- NOTE: this requires using aggregate functions
-- Show the average cost of an item as “average cost”
-- NOTE: this requires using an alias for the result
-- Show the name and total cost of each item. The total cost = quantity of the item * cost
-- Show all items grouped by type
-- NOTE: this requires using the “GROUP BY” clause
-- BONUS: Show the total cost of all items in the vending machine (sum of (each item’s cost * quantity of the item)) as “total cost”


    SELECT * FROM vending_machine
    SELECT * FROM vending_machine where type = 'candy'
    SELECT * FROM vending_machine where type = 'liquid' , amount < 5
    SELECT * FROM vending_machine ORDER BY name DESC 
    SELECT * FROM vending_machine where type = 'snack' ORDER By cost ASC
    SELECT * FROM vending_machine where name, cost * amount 