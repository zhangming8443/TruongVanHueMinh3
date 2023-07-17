CREATE DATABASE demo;

USE demo;

CREATE TABLE products (
    id INT,
    product_code INT,
    product_name VARCHAR(45),
    product_price DOUBLE,
    product_amount INT,
    product_description VARCHAR(100),
    product_status VARCHAR(45)
);

INSERT INTO demo.products (id, product_code, product_name, product_price, product_amount, product_description, product_status) VALUE
(1, 001, 'Iphone', 	5000,	 50, '14 Promax Pink',	 'New' ),
(2, 002, 'Iphone', 	3000,	 40, '12 Promax Black',	 '99' ),
(3, 003, 'Samsung',	6000,	 33, 'Galaxy 22 Ultra',	 '97' ),
(4, 004, 'Iphone',	 500,	 22, '7 Plus Pink',		 'New' ),
(5, 005, 'Samsung',	 300,	 11, 'A32 Blue',		 '96' ),
(6, 006, 'Samsung',	3333,	 38, 'S10 Black',		 '99' );

CREATE UNIQUE INDEX product_code_idx
ON products(product_code);

CREATE INDEX idx_product_name_price ON products(product_name, product_price);

EXPLAIN
SELECT *
FROM products
WHERE product_name = 'Iphone' 
AND product_price > 1000;

SELECT * 
FROM products
WHERE product_price > 1000 AND product_status = 'New';

CREATE VIEW product_info AS
SELECT product_code, product_name, product_price, product_status
FROM products;

SELECT *
FROM product_info
WHERE product_status = 'New';

ALTER VIEW product_info AS
SELECT product_code, product_name, product_price, product_description, product_status
FROM products;

DROP VIEW IF EXISTS product_info;

DELIMITER //
CREATE PROCEDURE get_all_products()
BEGIN
	SELECT *
    FROM products;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE add_new_product(
    id INT,
    product_code INT,
    product_name VARCHAR(45),
    product_price DOUBLE,
    product_amount INT,
    product_description VARCHAR(100),
    product_status VARCHAR(45)
)
BEGIN
  INSERT INTO demo.products (id, product_code, product_name, product_price, product_amount, product_description, product_status) VALUE
	(id, product_code, product_name, product_price, product_amount, product_description, product_status);
END //
DELIMITER ;

CALL add_new_product (7, 007, 'Nokia',	200,	 13, '1280 ',		 'New' );
SELECT *
FROM products

DELIMITER //
CREATE PROCEDURE update_product_by_id(
	id INT,
    product_code INT,
    product_name VARCHAR(45),
    product_price DOUBLE,
    product_amount INT,
    product_description VARCHAR(100),
    product_status VARCHAR(45)
)
BEGIN
  UPDATE demo.products
  SET 
	product_code = product_code, 
	product_name = product_name, 
	product_price = product_price,
	product_amount = product_amount,
	product_description = product_description,
	product_status = product_status
  WHERE id = id;
END //
DELIMITER ;



-- DROP PROCEDURE IF EXISTS UpdateProductById;

DELIMITER //
CREATE PROCEDURE delete_product_by_id(
  IN id INT
)
BEGIN
  DELETE
  FROM products
  WHERE id = id;
END //
DELIMITER ;

SET sql_safe_updates = 0;
CALL delete_product_by_id(1);
SET sql_safe_updates = 1;

SELECT *
FROM products








