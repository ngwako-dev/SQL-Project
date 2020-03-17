CREATE TABLE "Customers Table" (
    "CustomerId" INT NOT NULL,
    "FirstName" VARCHAR(50) NOT NULL,
    "LastName" VARCHAR(50) NOT NULL,
    "Gender" VARCHAR,
    "Address" VARCHAR(200) NOT NULL,
    "Phone" VARCHAR(50) NOT NULL,
    "Email" VARCHAR(100) NOT NULL,
    "City" VARCHAR(20) NOT NULL,
    "Country" VARCHAR(200) NOT NULL,
    PRIMARY KEY ("CustomerId")
);

INSERT INTO "Customers Table" ("CustomerId","FirstName","LastName","Gender","Address","Phone","Email","City","Country") VALUES
(1,'John','Hibert','Male','284 chaucer st','084789657','john@gmail.com','Johannesburg', 'South Africa'),
(2,'Thando','Sithole','Female', '240 Sect 1','0794445584','thando@gmail.com',   'Cape Town','South Africa'),
(3,'Leon','Glen','Male','81 Everton Rd,Gillits','0820832830','Leon@gmail.com','Durban','South Africa'),
(4,'Charl','Muller','Male','290A Dorset Ecke','+44856872553','Charl.muller@yahoo.com','Berlin','Germany'),
(5,'Julia','Stein','Female','2 Wernerring','+448672445058','Js234@yahoo.com','Frankfurt','Germany');





CREATE TABLE "Employees Table" (
    "EmployeeId" INT NOT NULL,
    "FirstName" VARCHAR(50) NOT NULL,
    "LastName" VARCHAR(50) NOT NULL,
    "Email" VARCHAR(100) NOT NULL,
    "JobTittle" VARCHAR(20) NOT NULL,
     PRIMARY KEY ("EmployeeId")
);

INSERT INTO "Employees Table" ("EmployeeId","FirstName","LastName","Email","JobTittle") VALUES
(2,'Lesly','Cronje','LesC@gmail.com','Clerk'),
(3,'Gideon','Maduku','m@gmail.com','Accountant'),
(1,'Kani','mathew','mat@gmail.com','Manager');





CREATE TABLE "Orders Table" (
    "OrderId" INT NOT NULL,
    "ProductId" INT NOT NULL,
    "PaymentId" INT NOT NULL,
    "FullfilledByEmployeeId" INT NOT NULL,
    "DateRequired" VARCHAR(20) NOT NULL,
    "DateShipped" VARCHAR(20) NOT NULL,
    "Status" VARCHAR(20) NOT NULL,
     PRIMARY KEY ("OrderId")
);

INSERT INTO "Orders Table" ("OrderId","ProductId","PaymentId","FullfilledByEmployeeId","DateRequired","DateShipped","Status") VALUES
(1,1,1,2,'05-09-2018',' ','Not shipped'),
(2,1,2,2,'04-09-2018','03-09-2018','Shipped'),
(3,3,3, 3,'06-09-2018',' ','Not shipped');




CREATE TABLE "Payments Table"(
      "CustomerId" INT NOT NULL,
      "PaymentId" INT NOT NULL,
      "PaymentDate" VARCHAR(20),
      "Amount" DECIMAL NOT NULL,
      PRIMARY KEY ("CustomerId")
);

INSERT INTO "Payments Table" ("CustomerId","PaymentId","PaymentDate","Amount") VALUES
(1,1,'01-09-2018',150.75),
(5,2,'03-09-2018',150.75),
(4,3,'03-09-2018',700.60);






CREATE TABLE "Products Table" (
    "ProductId" INT NOT NULL,
    "ProductName" VARCHAR(100) NOT NULL,
    "Description" VARCHAR(300) NOT NULL,
    "BuyPrice" DECIMAL NOT NULL,
     PRIMARY KEY ("ProductId")
);

INSERT INTO "Products Table" ("ProductId","ProductName","Description","BuyPrice") VALUES
(1,'Harley Davidson Chopper','This replica features working kickstand,front suspension, gear-shift lever',150.75),
(2,'Classic Car','Turnable front wheels, steering function',550.75),
(3,'Sports car','Turnable front wheels, steering function',700.60);
