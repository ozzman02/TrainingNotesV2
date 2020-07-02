INSERT INTO orders(customerid, employeeid, orderdate, requireddate, shipvia, freight, 
            shipname, shipaddress, shipcity, shippostalcode,shipcountry)
VALUES ('VINET', 4, '2017-09-16','2017-09-30',3,42.5, 'Vins et alcools Chevalier','59 rue de l''Abbaye', 
        'Reims','51100', 'France');

SELECT MAX(orderid) FROM orders;

INSERT INTO orders (
        orderid,
        customerid, 
        employeeid, 
        orderdate, 
        requireddate, 
        shipvia,
        freight, 
        shipname, 
        shipaddress, 
        shipcity, 
        shippostalcode,
        shipcountry)
VALUES (
        11078, 
        'VINET', 
        4, 
        '2017-09-16',
        '2017-09-30',
        3,
        42.5, 
        'Vins et alcools Chevalier',
        '59 rue de l''Abbaye', 
        'Reims',
        '51100', 
        'France'
);

SELECT *
FROM PRODUCTS
WHERE productname='Queso Cabrales'
-- productid=11;

INSERT INTO order_details (orderid, productid, unitprice,quantity,discount) VALUES (11078,11,14,20,0);
