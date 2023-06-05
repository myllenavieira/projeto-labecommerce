-- Active: 1683162985915@@127.0.0.1@3306
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    created_at TEXT DEFAULT(DATETIME()) NOT NULL
);


SELECT * FROM users;

CREATE TABLE products (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    description TEXT NOT NULL,
    category TEXT NOT NULL,
    image_url TEXT NOT NULL
);  

INSERT INTO products (id, name, price, description, category, image_url)
VALUES (
        "p001", 
        "Motorola G42", 
        1200,
        "Motorola G42", 
        "Eletrônicos",
        "https://http2.mlstatic.com/D_NQ_NP_957367-MLB44536019148_012021-O.webp"
    );

-- Get All Users
SELECT * FROM users;

-- Get All Products
SELECT * FROM products;

--Search product by name
SELECT * FROM  products WHERE name LIKE "%Motorola%";

-- Create User
INSERT INTO users(id, name, email, password)
VALUES ("u004", "João", "joao@email.com", "123456");

-- Create Product
INSERT INTO products(id, name, price, description, category, image_url)
VALUES ("p002", "Motorola Edge", 1100, "Motorola edge", "Eletrônicos", "");    

-- Get Products by IDENTIFIED
SELECT * FROM products
WHERE id = "p001";

-- Delete User by id
DELETE FROM users
WHERE id = "u001";

-- Delete Product by id
DELETE FROM products
WHERE id = "p006";

-- Edit User by id
UPDATE users
SET password = "456789"
WHERE id = "u001";

-- Edit Product by id
UPDATE products
SET price = 50
WHERE id = "p001";

-- Get All Users(refatorado)
SELECT * FROM users ORDER BY email ASC;

-- Get All Products(refatorado)
SELECT * FROM products ORDER BY price ASC
LIMIT 20 OFFSET 1;

-- Get All Products(refatorado)
SELECT * FROM products 
WHERE price >= 100 AND price <= 300
ORDER BY price ASC;

CREATE TABLE purchases (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    buyer TEXT NOT NULL,
    total_price REAL NOT NULL,
    created_at TEXT DEFAULT(DATETIME()) NOT NULL,
    paid INTEGER NOT NULL,
    FOREIGN KEY (buyer) REFERENCES users(id)
);

SELECT * FROM purchases;

INSERT INTO purchases(id, buyer, total_price, paid)
VALUES ("c001", "u001", 1200, 0);

--Atualizar purchases com pagamento = 1 e data atualizada da entrega
UPDATE purchases
SET paid = 1, created_at = DATETIME('now')
WHERE id = "c001";

--Query de consulta com JOIN das tabelas (users e purchases)
SELECT 
users.id AS idUsers,
purchases.id,
purchases.total_price,
purchases.created_at,
purchases.paid
FROM purchases
JOIN users ON purchases.buyer = users.id
WHERE users.id = "u001";    

-- Tabela de relação
CREATE TABLE purchases_products (
    purchase_id TEXT NOT NULL,
    product_id TEXT NOT NULL, 
    quantity INTEGER NOT NULL,
    FOREIGN KEY (purchase_id) REFERENCES purchases(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
    );

SELECT * FROM purchases_products;



SELECT
purchases.id,
purchases.buyer,
purchases.total_price,
purchases.created_at,
purchases.paid,
purchases_products.product_id AS productId,
purchases_products.quantity,
products.name,
products.price,
products.description,
products.category
FROM purchases
LEFT JOIN purchases_products 
ON purchases_products.purchase_id = purchases.id
INNER JOIN products 
ON purchases_products.product_id = products.id;


