-- Adminer 4.7.6 PostgreSQL dump

DROP TABLE IF EXISTS "customers";
CREATE TABLE "public"."customers" (
    "id" integer NOT NULL,
    "firstname" character varying(50) NOT NULL,
    "lastname" character varying(50) NOT NULL,
    "gender" character varying,
    "address" character varying(200) NOT NULL,
    "phone" character varying(50) NOT NULL,
    "email" character varying(100) NOT NULL,
    "city" character varying(20) NOT NULL,
    "country" character varying(200) NOT NULL,
    CONSTRAINT "customers_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "customers" ("id","firstname","lastname","gender","address","phone","email","city","country") VALUES
(1,'John','Hibert','Male','284 chaucer st','084789657','john@gmail.com','Johannesburg',	'South Africa'),
(2,'Thando','Sithole','Female',	'240 Sect 1','0794445584','thando@gmail.com',	'Cape Town','South Africa'),
(3,'Leon','Glen','Male','81 Everton Rd,Gillits','0820832830','Leon@gmail.com','Durban','South Africa'),
(4,'Charl','Muller','Male','290A Dorset Ecke','+44856872553','Charl.muller@yahoo.com','Berlin','Germany'),
(5,'Julia','Stein','Female','2 Wernerring','+448672445058','Js234@yahoo.com','Frankfurt','Germany');

DROP TABLE IF EXISTS "employees";
CREATE TABLE "public"."employees" (
    "id" integer NOT NULL,
    "firstname" character varying(50) NOT NULL,
    "lastname" character varying(50) NOT NULL,
    "email" character varying(100) NOT NULL,
    "jobtittle" character varying(20) NOT NULL,
    CONSTRAINT "employees_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "employees" ("id","firstname","lastname","email","jobtittle") VALUES
(2,'Lesly','Cronje','LesC@gmail.com','Clerk'),
(3,'Gideon','Maduku','m@gmail.com','Accountant'),
(1,'Kani','mathew','mat@gmail.com','Manager');

DROP TABLE IF EXISTS "ordertable";
CREATE TABLE "public"."ordertable" (
    "orderid" integer NOT NULL,
    "productid" integer NOT NULL,
    "paymentid" integer NOT NULL,
    "fullfilledbyemployeeid" integer NOT NULL,
    "daterequired" character varying(20) NOT NULL,
    "dateshipped" character varying(20) NOT NULL,
    "status" character varying(20) NOT NULL,
    CONSTRAINT "ordertable_pkey" PRIMARY KEY ("orderid")
) WITH (oids = false);

INSERT INTO "ordertable" ("orderid","productid","paymentid","fullfilledbyemployeeid","daterequired","dateshipped","status") VALUES
(1,1,1,2,'05-09-2018',' ','Not shipped'),
(2,1,2,2,'04-09-2018','03-09-2018','Shipped'),
(3,3,3,	3,'06-09-2018',' ','Not shipped');

DROP TABLE IF EXISTS "paymentstable";
CREATE TABLE "public"."paymentstable" (
    "customerid" integer NOT NULL,
    "paymentid" integer NOT NULL,
    "paymentdate" character varying(20),
    "amount" character varying(20)
) WITH (oids = false);

INSERT INTO "paymentstable" ("customerid","paymentid","paymentdate","amount") VALUES
(1,1,'01-09-2018','R150.75'),
(5,2,'03-09-2018','R150.75'),
(4,3,'03-09-2018','R700.60');

DROP TABLE IF EXISTS "productstable";
CREATE TABLE "public"."productstable" (
    "productid" integer NOT NULL,
    "productname" character varying(100) NOT NULL,
    "description" character varying(300) NOT NULL,
    "buyprice" character varying(20) NOT NULL,
    CONSTRAINT "productstable_pkey" PRIMARY KEY ("productid")
) WITH (oids = false);

INSERT INTO "productstable" ("productid","productname","description","buyprice") VALUES
(1,'Harley Davidson Chopper','This replica features working kickstand,front suspension, gear-shift lever','R150.75'),
(2,'Classic Car','Turnable front wheels, steering function','R550.75'),
(3,'Sports car','Turnable front wheels, steering function','R700.60');

-- 2020-03-11 13:14:51.148791+00
