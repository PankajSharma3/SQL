--Create
CREATE DATABASE databasename;

--DROP
DROP DATABASE databasename;

--Create 
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

--Drop
DROP TABLE table_name;

--ALTER TABLE -> The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
ALTER TABLE table_name ADD column_name datatype;

--Constraints
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);

--Check
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);

--DATE - format YYYY-MM-DD
--DATETIME - format: YYYY-MM-DD HH:MI:SS
--TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
--YEAR - format YYYY or YY

--VIEW
CREATE VIEW view_name AS SELECT column1, column2 FROM table_name WHERE condition;

--CHAR(size)	A FIXED length string (can contain letters, numbers, and special characters). The size parameter specifies the column length in characters - can be from 0 to 255. Default is 1
--VARCHAR(size)	A VARIABLE length string (can contain letters, numbers, and special characters). The size parameter specifies the maximum string length in characters - can be from 0 to 65535
--BINARY(size)	Equal to CHAR(), but stores binary byte strings. The size parameter specifies the column length in bytes. Default is 1
--VARBINARY(size)	Equal to VARCHAR(), but stores binary byte strings. The size parameter specifies the maximum column length in bytes.
--TINYBLOB	For BLOBs (Binary Large Objects). Max length: 255 bytes
--TINYTEXT	Holds a string with a maximum length of 255 characters
--TEXT(size)	Holds a string with a maximum length of 65,535 bytes
--BLOB(size)	For BLOBs (Binary Large Objects). Holds up to 65,535 bytes of data
--MEDIUMTEXT	Holds a string with a maximum length of 16,777,215 characters
--MEDIUMBLOB	For BLOBs (Binary Large Objects). Holds up to 16,777,215 bytes of data
--LONGTEXT	Holds a string with a maximum length of 4,294,967,295 characters
--LONGBLOB	For BLOBs (Binary Large Objects). Holds up to 4,294,967,295 bytes of data
--ENUM(val1, val2, val3, ...)	A string object that can have only one value, chosen from a list of possible values. You can list up to 65535 values in an ENUM list. If a value is inserted that is not in the list, a blank value will be inserted. The values are sorted in the order you enter them
--SET(val1, val2, val3, ...)	A string object that can have 0 or more values, chosen from a list of possible values. You can list up to 64 values in a SET list
--BIT(size)	A bit-value type. The number of bits per value is specified in size. The size parameter can hold a value from 1 to 64. The default value for size is 1.
--TINYINT(size)	A very small integer. Signed range is from -128 to 127. Unsigned range is from 0 to 255. The size parameter specifies the maximum display width (which is 255)
--BOOL	Zero is considered as false, nonzero values are considered as true.
--BOOLEAN	Equal to BOOL
--SMALLINT(size)	A small integer. Signed range is from -32768 to 32767. Unsigned range is from 0 to 65535. The size parameter specifies the maximum display width (which is 255)
--MEDIUMINT(size)	A medium integer. Signed range is from -8388608 to 8388607. Unsigned range is from 0 to 16777215. The size parameter specifies the maximum display width (which is 255)
--INT(size)	A medium integer. Signed range is from -2147483648 to 2147483647. Unsigned range is from 0 to 4294967295. The size parameter specifies the maximum display width (which is 255)
--INTEGER(size)	Equal to INT(size)
--BIGINT(size)	A large integer. Signed range is from -9223372036854775808 to 9223372036854775807. Unsigned range is from 0 to 18446744073709551615. The size parameter specifies the maximum display width (which is 255)
--FLOAT(size, d)	A floating point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter. This syntax is deprecated in MySQL 8.0.17, and it will be removed in future MySQL versions
--FLOAT(p)	A floating point number. MySQL uses the p value to determine whether to use FLOAT or DOUBLE for the resulting data type. If p is from 0 to 24, the data type becomes FLOAT(). If p is from 25 to 53, the data type becomes DOUBLE()
--DOUBLE(size, d)	A normal-size floating point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter
--DOUBLE PRECISION(size, d)	 
--DECIMAL(size, d)	An exact fixed-point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter. The maximum number for size is 65. The maximum number for d is 30. The default value for size is 10. The default value for d is 0.
--DEC(size, d)	Equal to DECIMAL(size,d)

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
