/*
    COALESCE function returns the first non-null argument. 
    You will learn how to apply this function in SELECT statement to handle null values effectively.
    Often used to substitute a default value for a null value.
*/

SELECT customerid,COALESCE(shipregion,'N/A') FROM orders;

SELECT companyname,COALESCE(homepage,'Call to find') from suppliers;
