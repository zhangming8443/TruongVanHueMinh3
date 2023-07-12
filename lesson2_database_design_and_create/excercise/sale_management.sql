create database sale_management;

use sale_management;

CREATE TABLE customer (
    c_id INT,
    c_name VARCHAR(45),
    c_age INT,
    PRIMARY KEY (c_id)
);

CREATE TABLE `order` (
    o_id INT,
    c_id INT,
    o_date DATE,
    o_total_price DOUBLE,
    PRIMARY KEY (o_id),
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id)
);

CREATE TABLE product (
    p_id INT,
    p_name VARCHAR(45),
    p_price DOUBLE,
    PRIMARY KEY (p_id)
);
    
CREATE TABLE order_detail (
    o_id INT,
    p_id INT,
    PRIMARY KEY (o_id , p_id),
    FOREIGN KEY (o_id)
        REFERENCES `order` (o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id)
);