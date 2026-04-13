//SELECT+WHERE
SELECT * FROM customers WHERE city = 'Kochi';
//ORDER BY
SELECT * FROM orders ORDER BY amount DESC;
//GROUP BY + SUM
SELECT customer_id, SUM(amount) 
FROM orders 
GROUP BY customer_id;
//JOIN
SELECT customers.name, orders.amount
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id;
//AVG
SELECT AVG(amount) FROM orders;
//SUBQUERY
SELECT name 
FROM customers
WHERE id IN (
  SELECT customer_id FROM orders WHERE amount > 500
);
//VIEW
CREATE VIEW customer_orders AS
SELECT customers.name, orders.amount
FROM customers
JOIN orders ON customers.id = orders.customer_id;
//NULL Handling
SELECT IFNULL(name, 'No Name') FROM customers;
