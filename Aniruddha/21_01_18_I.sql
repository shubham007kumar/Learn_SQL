/* 
   "INSERT" statement is used to add/insert new row to a table.
   There are two methods.
*/

INSERT INTO
   Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

/* 
   OR
*/

INSERT INTO
   Customers
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

/* 
   Both above query will make a new row at the end by default.
   Where the columns can be specified as needed.
   In all of the above queries we didn't mendtion CustomerID
   as it is a "auto-increment" field and will generate
   automaticaly as new rows inserted.
   If some row is inserted and the value for that column is not mentioned
   then the section will be marked as "NULL".
*/

/* 
   We can populate a table using another table
   by the use of "SELECT" clause.
   Like shown below.
*/

INSERT INTO first_table
SELECT
   *
FROM second_table;

/* 
   Here data from "second_table" will be copied
   and inserted into "first_table".
   We can also specify the columns like this query below.
*/

INSERT INTO first_table(names_of_columns(a),names_of_columns(b),names_of_columns(c))
SELECT
   names_of_columns(X),
   names_of_columns(y),
   names_of_columns(z)
FROM second_table;

/* 
   Here brackets for variable a,b,c and x,y,z are not applicable in the real query.
   "WHERE" clause can also be used along with this query.
*/
