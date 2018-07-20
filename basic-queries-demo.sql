# 1. Create a database called **Sinharaja**.

CREATE TABLE products (
  barcode VARCHAR(8) PRIMARY KEY NOT NULL,
  description VARCHAR(50) NOT NULL,
  price DECIMAL(10,2),
  quantity INT DEFAULT 0
);

# Altering the `price` table in `products` table
ALTER TABLE products
  MODIFY COLUMN price DECIMAL(10,2);

ALTER TABLE products
DROP COLUMN quantity;

ALTER TABLE products
ADD COLUMN quantity INT DEFAULT 0;


INSERT INTO products (barcode, description, price, quantity )
  VALUES ('07427452', 'Flower Pot', 8.50, 42);

INSERT INTO products (barcode, description, price, quantity )
  VALUES ('90018084', 'Leather Shoelaces', 14.77, 12);

INSERT INTO products (barcode, description, price, quantity )
  VALUES ('47390028', 'Oilers Hat', 28.42, 23);

INSERT INTO products (barcode, description, price, quantity )
  VALUES ('16830022', 'Jean Shorts', 24.66, 66);

INSERT INTO products (barcode, description, price, quantity )
  VALUES ('59028841', 'Bear Costume', 473.48, 82);

INSERT INTO products (barcode, description, price, quantity )
  VALUES ('12365438', 'Orange Tee Shirt', 14.46, 15);

INSERT INTO products (barcode, description, price, quantity )
  VALUES ('98740932', 'Three Leg Wood Stool', 55.98, 8);

INSERT INTO products (barcode, description, price, quantity )
  VALUES ('53791253', 'Plastic Sunglasses', 12.34, 9);

INSERT INTO products (barcode, description, price, quantity )
    VALUES ('00870021', 'Ice Cube Tray', 5.21, 10);

# 13. Show me the products with more than `10` units in stock.

SELECT *
FROM products
WHERE
  quantity > 10;


# 14. Show me the products with  `10` or less units in stock.

SELECT *
FROM products
WHERE
  quantity <= 10;


# 15. Show me the products ordered by `Description` in ascending order).
# (use ORDERBY operator)

SELECT *
FROM products
ORDER BY description ASC;  # ASC | DESC


# 16. Show me the products ordered by price, from highest to lowest.;

SELECT *
FROM products
ORDER BY price DESC;


# 17. What are the products priced between `$10.00` and `$30.00`.

SELECT *
FROM products
WHERE
  price >= 10 AND
  price <= 30;




# 18. What are the products between `$10.00` and `$30.00`
#      ordered by lowest to highest.

SELECT description, price
FROM products
WHERE
  price >= 10 AND
  price <= 30
ORDER BY price ASC;
