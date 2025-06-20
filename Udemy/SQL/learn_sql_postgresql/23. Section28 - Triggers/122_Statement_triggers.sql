/*
	OLD and NEW are not going to work at the stament level, could have many rows.

	How to access the information

		REFERENCES NEW TABLES AS new_name
		REFERENCES OLD TABLES AS old_name
		REFERENCES OLD TABLE AS old_name NEW TABLE AS new_name

	How do you know in procedure if INSERT, UPDATE, or DELETE was called?

		Variable: TG_OP

	Another useful function: current_user()
*/

CREATE TABLE order_details_audit (
	operation char(1) NOT NULL,
	userid	text NOT NULL,
	stamp	timestamp NOT NULL,
    orderid smallint NOT NULL,
    productid smallint NOT NULL,
    unitprice real NOT NULL,
    quantity smallint NOT NULL,
    discount real
)

CREATE OR REPLACE FUNCTION audit_order_details() RETURNS trigger AS $$
BEGIN
	IF (TG_OP = 'DELETE') THEN
		INSERT INTO order_details_audit
		SELECT 'D',user,now(),o.* FROM old_table o;
	ELSIF (TG_OP = 'UPDATE') THEN
		INSERT INTO order_details_audit
		SELECT 'U',user,now(),n.* FROM new_table n;
	ELSIF (TG_OP = 'INSERT') THEN
		INSERT INTO order_details_audit
		SELECT 'U',user,now(),n.* FROM new_table n;
	END IF;
	RETURN NULL;  -- we are using in after trigger so don't need to return update

END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS audit_order_details_insert ON order_details;

CREATE TRIGGER audit_order_details_insert AFTER INSERT ON order_details
REFERENCING NEW TABLE AS new_table
FOR EACH STATEMENT EXECUTE FUNCTION audit_order_details();

DROP TRIGGER IF EXISTS audit_order_details_update ON order_details;

CREATE TRIGGER audit_order_details_update AFTER UPDATE ON order_details
REFERENCING NEW TABLE AS new_table
FOR EACH STATEMENT EXECUTE FUNCTION audit_order_details();

DROP TRIGGER IF EXISTS audit_order_details_delete ON order_details;

CREATE TRIGGER audit_order_details_delete AFTER DELETE ON order_details
REFERENCING OLD TABLE AS old_table
FOR EACH STATEMENT EXECUTE FUNCTION audit_order_details();

INSERT INTO order_details
VALUES (10248, 3, 10, 5, 0);

SELECT * FROM order_details_audit;

update order_details
SET discount=0.20
WHERE orderid=10248 AND productid=3;

SELECT * FROM order_details_audit;

DELETE FROM order_details
WHERE orderid=10248 AND productid=3;

SELECT * FROM order_details_audit;

CREATE TABLE orders_audit (
	operation char(1) NOT NULL,
	userid text NOT NULL,
	stamp timestamp NOT NULL,
	orderid smallint NOT NULL,
    customerid bpchar,
    employeeid smallint,
    orderdate date,
    requireddate date,
    shippeddate date,
    shipvia smallint DEFAULT 1,
    freight real,
    shipname character varying(40),
    shipaddress character varying(60),
    shipcity character varying(15),
    shipregion character varying(15),
    shippostalcode character varying(10),
    shipcountry character varying(15)
)

CREATE OR REPLACE FUNCTION audit_orders() RETURNS trigger AS $$
BEGIN
	IF (TG_OP = 'INSERT') THEN
		INSERT INTO orders_audit
		SELECT 'I',user,now(),n.* FROM new_table n;
	ELSIF (TG_OP = 'UPDATE') THEN
		INSERT INTO orders_audit
		SELECT 'U',user,now(),n.* FROM new_table n;
	ELSIF (TG_OP = 'DELETE') THEN
		INSERT INTO orders_audit
		SELECT 'D',user,now(),O.* FROM old_table o;
	END IF;
	RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS audit_orders_insert ON orders;

CREATE TRIGGER audit_orders_insert AFTER INSERT ON orders
REFERENCING NEW TABLE AS new_table
FOR EACH STATEMENT EXECUTE FUNCTION audit_orders();

DROP TRIGGER IF EXISTS audit_orders_update ON orders;

CREATE TRIGGER audit_orders_update AFTER UPDATE ON orders
REFERENCING NEW TABLE AS new_table
FOR EACH STATEMENT EXECUTE FUNCTION audit_orders();

DROP TRIGGER IF EXISTS audit_orders_delete ON orders;

CREATE TRIGGER audit_orders_delete AFTER DELETE ON orders
REFERENCING OLD TABLE AS old_table
FOR EACH STATEMENT EXECUTE FUNCTION audit_orders();
