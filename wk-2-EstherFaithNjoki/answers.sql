
USE salesdb;


CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);


INSERT INTO student (id, fullName, age) VALUES
(1, 'Alice Johnson', 18),
(2, 'Bob Smith', 19),
(3, 'Charlie Brown', 17);


UPDATE student
SET age = 20
WHERE id = 2;

CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);

INSERT INTO student (id, fullName, age) VALUES (1, 'Njoki Maina', 18);
INSERT INTO student (id, fullName, age) VALUES (2, 'Jared Kavaiku', 19);
INSERT INTO student (id, fullName, age) VALUES (3, 'Antonette Chanelle', 21);

UPDATE student
SET age = 20
WHERE id = 2;


SELECT 
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

SELECT 
    customerName,
    country,
    AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

SELECT 
    productCode,
    quantityOrdered,
    (quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered, priceEach;

SELECT 
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;