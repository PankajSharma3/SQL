--Distinct: For distinct values
SELECT DISTINCT column1, column2 FROM table_name;

--Where: Used for condition
SELECT column1, column2 FROM table_name WHERE condition;

--Order BY: The ORDER BY keyword is used to sort the result-set in ascending or descending order
SELECT column1, column2 FROM table_name ORDER BY column1, column2, ... ASC|DESC;

--Insert into:
INSERT INTO table_name (column1, column2, column3) VALUES (value1, value2, value3);

--Update:
UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;

--Delete
DELETE FROM table_name WHERE condition;

--Top
SELECT column_name(s) FROM table_name WHERE condition LIMIT number;

--Min and Max
SELECT MIN(column_name) FROM table_name WHERE condition;
SELECT MAX(column_name) FROM table_name WHERE condition;

--Count
SELECT COUNT(column_name) FROM table_name WHERE condition;

--Sum
SELECT SUM(column_name) FROM table_name WHERE condition;

--Average
SELECT AVG(column_name) FROM table_name WHERE condition;

--Like
SELECT column1, column2 FROM table_name WHERE columnN LIKE pattern;

--IN
SELECT column_name(s) FROM table_name WHERE column_name IN (value1, value2);

--Between
SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;

--Alias
SELECT column_name AS alias_name FROM table_name;

--Inner Join
SELECT column_name(s) FROM table1 INNER JOIN table2 ON table1.column_name = table2.column_name;

--Left Join
SELECT column_name(s) FROM table1 LEFT JOIN table2 ON table1.column_name = table2.column_name;

--Right Join
SELECT column_name(s) FROM table1 RIGHT JOIN table2 ON table1.column_name = table2.column_name;

--Full Join
SELECT column_name(s) FROM table1 FULL OUTER JOIN table2 ON table1.column_name = table2.column_name WHERE condition;

--Self Join
SELECT column_name(s) FROM table1 T1, table1 T2 WHERE condition;

--Union
SELECT column_name(s) FROM table1 UNION SELECT column_name(s) FROM table2;

--Group By
SELECT column_name(s) FROM table_name WHERE condition GROUP BY column_name(s) ORDER BY column_name(s);

--Having
SELECT column_name(s) FROM table_name WHERE condition GROUP BY column_name(s) HAVING condition ORDER BY column_name(s);

--Exist
SELECT column_name(s) FROM table_name WHERE EXISTS (SELECT column_name FROM table_name WHERE condition);

--Any,All
SELECT column_name(s) FROM table_name WHERE column_name operator ANY(SELECT column_name FROM table_name WHERE condition);

--Select Into
SELECT * INTO newtable [IN externaldb] FROM oldtable WHERE condition;

--Insert Into Select
INSERT INTO table2 SELECT * FROM table1 WHERE condition;

--Case 
CASE WHEN condition1 THEN result1 WHEN condition2 THEN result2 WHEN conditionN THEN resultN ELSE result END;

--Stored Processor
CREATE PROCEDURE procedure_name AS sql_statement GO; Execute a Stored Procedure EXEC procedure_name;
