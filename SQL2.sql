CREATE DATABASE my_database;
USE my_database;

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  email VARCHAR(50),
  age INT
);

CREATE TABLE orders (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  product VARCHAR(50),
  quantity INT,
  price DECIMAL(10, 2),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE products (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  price DECIMAL(10, 2)
);

CREATE TABLE categories (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50)
);

CREATE TABLE product_categories (
  product_id INT,
  category_id INT,
  FOREIGN KEY (product_id) REFERENCES products(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);


-- ���������� ������� "users"
INSERT INTO users (name, email, age) VALUES
  ('���� ������', 'ivan.petrov@email.com', 30),
  ('���� ��������', 'anna.smirnova@email.com', 25),
  ('������ ������', 'sergey.ivanov@email.com', 35),
  ('����� �������', 'olga.kozlova@email.com', 28),
  ('������� �������', 'alexey.sokolov@email.com', 22);
 
-- ���������� ������� "orders"
INSERT INTO orders (user_id, product, quantity, price) VALUES
  (1, 'Product A', 3, 45.99),
  (2, 'Product B', 2, 29.99),
  (3, 'Product A', 5, 45.99),
  (4, 'Product C', 1, 19.99),
  (5, 'Product B', 4, 29.99);
 
-- ���������� ������� "products"
INSERT INTO products (name, price) VALUES
  ('Product A', 45.99),
  ('Product B', 29.99),
  ('Product C', 19.99),
  ('Product D', 39.99),
  ('Product E', 59.99);
 
-- ���������� ������� "categories"
INSERT INTO categories (name) VALUES
  ('Category 1'),
  ('Category 2'),
  ('Category 3'),
  ('Category 4'),
  ('Category 5');
 
-- ���������� ������� "product_categories"
INSERT INTO product_categories (product_id, category_id) VALUES
  (1, 1),
  (2, 1),
  (2, 2),
  (3, 1),
  (4, 3);

-- �������� ��� ����� �������������"
SELECT name FROM users;

-- �������� ��� ������, ��������������� �� ����������"
SELECT * FROM orders ORDER BY quantity;

-- �������� ��������� ��������� ���� �������"
SELECT SUM(quantity * price) AS total_cost FROM orders;

-- �������� ��� ��������, ��������������� �� ���� � ������� ��������"
SELECT * FROM products ORDER BY price DESC;

-- �������� ��� ��������, ������������� � �������"
SELECT products.*
FROM products
LEFT JOIN orders ON products.id = orders.product_id
WHERE orders.id IS NULL;

-- �������� ��� ���������, � ������� ���� ��������"
SELECT categories.name
FROM categories
JOIN product_categories ON categories.id = product_categories.category_id
JOIN products ON product_categories.product_id = products.id
GROUP BY categories.name;

-- �������� ��� ������, ��������� �������������� � ������, ������������ �� ������������ �����"
SELECT orders.*
FROM orders
JOIN users ON orders.user_id = users.id
WHERE users.name LIKE '�%';
 
-- �������� ��� ��������, ��������������� �� ���������� � ����"
SELECT products.name, categories.name, products.price
FROM products
JOIN product_categories ON products.id = product_categories.product_id
JOIN categories ON product_categories.category_id = categories.id
ORDER BY categories.name, products.price;

-- ����� ��������� ���������� ��������� � ������ ���������."
SELECT categories.name, SUM(product_categories.product_id) AS total_products
FROM categories
LEFT JOIN product_categories ON categories.id = product_categories.category_id
GROUP BY categories.name;

-- ����� ������������ � ���������� ����������� �������."
SELECT users.id, users.name, COUNT(orders.id) AS order_count
FROM users
LEFT JOIN orders ON users.id = orders.user_id
GROUP BY users.id, users.name
ORDER BY order_count DESC
LIMIT 1;

-- ����� ����� ������� �����."
SELECT orders.id, orders.user_id, users.name, MAX(orders.price * orders.quantity) AS max_order_price
FROM orders
INNER JOIN users ON users.id = orders.user_id;

-- �������� ������ ��������� � ���������� �������, � ������� ��� ���� �������, ��� ����������� ������������."
SELECT users.name, orders.product, COUNT(orders.id) AS order_count
FROM orders
INNER JOIN users ON users.id = orders.user_id
WHERE users.id = 1
GROUP BY users.name, orders.product;