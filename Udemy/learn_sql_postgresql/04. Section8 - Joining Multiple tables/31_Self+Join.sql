SELECT A.companyname AS CustomerName1, B.companyname AS CustomerName2, A.city
FROM customers A, customers B
WHERE A.customerid > B.customerid
AND A.city = B.city
ORDER BY A.city;

SELECT  A.companyname AS SupplierName1,
		    B.companyname AS SupplierName2,  A.country
FROM suppliers A, suppliers B
WHERE A.supplierid > B.supplierid
AND A.country = B.country
ORDER BY A.country;
