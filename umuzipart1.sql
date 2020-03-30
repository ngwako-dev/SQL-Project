CREATE TABLE customers (
     customerid INT NOT NULL,
     firstname VARCHAR(50) NOT NULL,
     lastName VARCHAR(50) NOT NULL,
     gender VARCHAR,
     address VARCHAR(200) NOT NULL,
     phone VARCHAR(50) NOT NULL,
     email VARCHAR(100) NOT NULL,
     city VARCHAR(20) NOT NULL,
     country VARCHAR(200) NOT NULL,
    PRIMARY KEY (customerid)
)

INSERT INTO  customers (customerid,firstname,nastname,gender,address,phone,email,city,country) VALUES
(1,'John','Hibert','Male','284 chaucer st','084789657','john@gmail.com','Johannesburg', 'South Africa'),
(2,'Thando','Sithole','Female', '240 Sect 1','0794445584','thando@gmail.com',   'Cape Town','South Africa'),
(3,'Leon','Glen','Male','81 Everton Rd,Gillits','0820832830','Leon@gmail.com','Durban','South Africa'),
(4,'Charl','Muller','Male','290A Dorset Ecke','+44856872553','Charl.muller@yahoo.com','Berlin','Germany'),
(5,'Julia','Stein','Female','2 Wernerring','+448672445058','Js234@yahoo.com','Frankfurt','Germany');





CREATE TABLE employees (
     employeeid INT NOT NULL,
     firstname VARCHAR(50) NOT NULL,
     lastname VARCHAR(50) NOT NULL,
     email VARCHAR(100) NOT NULL,
     jobtittle VARCHAR(20) NOT NULL,
     PRIMARY KEY (employeeid)
);

INSERT INTO  employees (employeeid,firstname,lastname,email,jobtittle) VALUES
(2,'Lesly','Cronje','LesC@gmail.com','Clerk'),
(3,'Gideon','Maduku','m@gmail.com','Accountant'),
(1,'Kani','mathew','mat@gmail.com','Manager');





CREATE TABLE orders (
     orderid INT NOT NULL,
     productid INT NOT NULL,
     paymentid INT NOT NULL,
     fullfilledbyemployeeid INT NOT NULL,
     daterequired VARCHAR(20) NOT NULL,
     dateshipped VARCHAR(20) NOT NULL,
     status VARCHAR(20) NOT NULL,
     PRIMARY KEY (orderid)
);

INSERT INTO orders (orderid,productid,paymentid,fullfilledbyemployeeid,daterequired,dateshipped,status) VALUES
(1,1,1,2,'05-09-2018',' ','Not shipped'),
(2,1,2,2,'04-09-2018','03-09-2018','Shipped'),
(3,3,3, 3,'06-09-2018',' ','Not shipped');




CREATE TABLE payments(
       customerid INT NOT NULL,
       paymentid INT NOT NULL,
       paymentdate VARCHAR(20),
       amount DECIMAL NOT NULL,
      PRIMARY KEY (customerid)
);

INSERT INTO  payments (customerid,paymentid,paymentdate,amount) VALUES
(1,1,'01-09-2018',150.75),
(5,2,'03-09-2018',150.75),
(4,3,'03-09-2018',700.60);






CREATE TABLE products (
     productid INT NOT NULL,
     productname VARCHAR(100) NOT NULL,
     description VARCHAR(300) NOT NULL,
     buyprice DECIMAL NOT NULL,
     PRIMARY KEY (productid)
);

INSERT INTO products (productid,productname,description,buyprice) VALUES
(1,'Harley Davidson Chopper','This replica features working kickstand,front suspension, gear-shift lever',150.75),
(2,'Classic Car','Turnable front wheels, steering function',550.75),
(3,'Sports car','Turnable front wheels, steering function',700.60);
