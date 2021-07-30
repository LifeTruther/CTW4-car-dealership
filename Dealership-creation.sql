CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "phone_number" NUMERIC(15),
  "address" VARCHAR(100),
  "billing_info" VARCHAR(100),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "car" (
  "car_id" SERIAL,
  "customer_id" INTEGER,
  "vin_number" VARCHAR(17),
  "make" VARCHAR(50),
  "model" VARCHAR(50),
  "color" VARCHAR(50),
  "year_" NUMERIC(4),
  PRIMARY KEY ("car_id"),
  CONSTRAINT "FK_car.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "customer"("customer_id")
);

CREATE TABLE "salesperson" (
  "salesperson_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "office_number" NUMERIC(15),
  "email" VARCHAR(50),
  PRIMARY KEY ("salesperson_id")
);

CREATE TABLE "sales" (
  "invoice_id" SERIAL,
  "sale_date" DATE,
  "car_id" INTEGER,
  "customer_id" INTEGER,
  "salesperson_id" INTEGER,
  "price" NUMERIC(8,2),
  PRIMARY KEY ("invoice_id"),
  CONSTRAINT "FK_sales.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "customer"("customer_id"),
  CONSTRAINT "FK_sales.car_id"
    FOREIGN KEY ("car_id")
      REFERENCES "car"("car_id"),
  CONSTRAINT "FK_sales.salesperson_id"
    FOREIGN KEY ("salesperson_id")
      REFERENCES "salesperson"("salesperson_id")
);

CREATE TABLE "service_ticket" (
  "service_ticket_id" SERIAL,
  "car_id" INTEGER,
  "customer_id" INTEGER,
  "date_recieved" DATE,
  "date_returned" DATE,
  "billing" NUMERIC(7,2),
  PRIMARY KEY ("service_ticket_id"),
  CONSTRAINT "FK_service_ticket.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "customer"("customer_id"),
  CONSTRAINT "FK_service_ticket.car_id"
    FOREIGN KEY ("car_id")
      REFERENCES "car"("car_id")
);

CREATE TABLE "car_parts" (
  "parts_id" SERIAL,
  "service_ticket_id" INTEGER,
  "part_number" INTEGER,
  "description" VARCHAR(100),
  "parts_price" NUMERIC(8,2),
  PRIMARY KEY ("parts_id"),
  CONSTRAINT "FK_car_parts.service_ticket_id"
    FOREIGN KEY ("service_ticket_id")
      REFERENCES "service_ticket"("service_ticket_id")
);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("mechanic_id")
);



CREATE TABLE "labor_invoice" (
  "labor_id" SERIAL,
  "mechanic_id" INTEGER,
  "service_ticket_id" INTEGER,
  "parts_id" INTEGER,
  "hours" NUMERIC(20),
  "rate" NUMERIC(5,2),
  PRIMARY KEY ("labor_id"),
  CONSTRAINT "FK_labor_invoice.service_ticket_id"
    FOREIGN KEY ("service_ticket_id")
      REFERENCES "service_ticket"("service_ticket_id"),
  CONSTRAINT "FK_labor_invoice.parts_id"
    FOREIGN KEY ("parts_id")
      REFERENCES "car_parts"("parts_id"),
  CONSTRAINT "FK_labor_invoice.mechanic_id"
    FOREIGN KEY ("mechanic_id")
      REFERENCES "mechanic"("mechanic_id")
);

-- DO NOT RUN AGAIN :P