1. SELECT * FROM "Customers Table"

2. SELECT "FirstName"
   FROM "Customers Table";

3. SELECT "FirstName"
   FROM "Customers Table"
   WHERE "CustomerId"=1;

4. UPDATE "Customers Table" SET "FirstName"='Lerato',"LastName"='Mabitso'
   WHERE "CustomerId"=1;

5. DELETE FROM "Customers Table" WHERE "CustomerId"=2;

6. SELECT DISTINCT ("Status")
   FROM "Orders Table";

   SELECT COUNT (DISTINCT "Status")
   FROM "Orders Table";

7. SELECT MAX("Amount") FROM "Payments Table";

8. SELECT * FROM "Customers Table"
   ORDER BY "Country";

9. SELECT * FROM "Products Table"
   WHERE "BuyPrice" BETWEEN 100 AND 600;

10. SELECT * FROM "Customers Table"
    WHERE "Country"='Germany' AND "City"='Berlin';

11. SELECT * FROM "Customers Table"
    WHERE "City"='Cape Town' OR "City"='Durban';

12. SELECT * FROM "Products Table"
    WHERE "BuyPrice" >500;

13. SELECT SUM("Amount")
    FROM "Payments Table";

14. SELECT COUNT("Status")
    FROM "Orders Table"
    WHERE "Status"='Shipped'

15. SELECT AVG("BuyPrice")
    FROM "Products Table";

    SELECT AVG("BuyPrice"/12)
    FROM "Products Table"

16. SELECT
    "Customers Table"."CustomerId",
    "FirstName",
    "LastName",
    "Gender",
    "Address",
    "Phone",
    "Email",
    "City",
    "Country"
    FROM
   "Customers Table"
   INNER JOIN "Payments Table" ON "Payments Table"."CustomerId" = "Customers Table"."CustomerId"
   ORDER BY
   "Customers Table"."CustomerId";


17. SELECT "ProductName"
    FROM "Products Table"
    WHERE "Description"='Turnable front wheels, steering function';
