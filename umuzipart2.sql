1. SELECT * FROM Customers

2. SELECT firstname
   FROM  customers;

3. SELECT firstname
   FROM customers
   WHERE customerid=1;

4. UPDATE customers SET firstname='Lerato',lastname='Mabitso'
   WHERE  customerid=1;

5. DELETE FROM  customers WHERE customerid=2;

6. SELECT DISTINCT (status)
   FROM  orders;

   SELECT COUNT (DISTINCT status)
   FROM orders;

7. SELECT MAX(amount) FROM payments;

8. SELECT * FROM customers
   ORDER BY country;

9. SELECT * FROM products
   WHERE  buyPrice BETWEEN 100 AND 600;

10. SELECT * FROM  customers
    WHERE  country='Germany' AND city='Berlin';

11. SELECT * FROM  customers
    WHERE  city='Cape Town' OR city='Durban';

12. SELECT * FROM  products
    WHERE buyprice >500;

13. SELECT SUM(amount)
    FROM  payments;

14. SELECT COUNT(status)
    FROM  orders
    WHERE status='Shipped'

15. SELECT AVG(buyprice)
    FROM  products;

    SELECT AVG(buyprice/12)
    FROM  products

16. SELECT
     customers.customerid,
     firstname,
     lastname,
     gender,
     address,
     phone,
     email,
     city,
     country
    FROM
    customers
   INNER JOIN payments ON payments.customerid = customers.customerid
   ORDER BY
    customers.customerid;


17. SELECT productname
    FROM  products
    WHERE  description='Turnable front wheels, steering function';
