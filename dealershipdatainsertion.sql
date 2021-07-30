-- Dealership Data Insertion
INSERT INTO "customer" (
  "customer_id",
  "first_name",
  "last_name",
  "phone_number",
  "address",
  "billing_info"
)VALUES(
	1,
	'big',
	'boss',
	0000000000,
	'tha dealership',
	'central account'
);

INSERT INTO "car" (
  "car_id",
  "customer_id",
  "vin_number",
  "make",
  "model",
  "color",
  "year_"
)VALUES(
	1,
	1,
	'AB7677D8888888888',
	'Toyota',
	'Prius',
	'White',
	2004
);

INSERT INTO "salesperson" (
  "salesperson_id",
  "first_name",
  "last_name",
  "office_number",
  "email"
)VALUES(
	1,
	'Michael',
	'Buble',
	2,
	'merrychristmas@aol.net'
);

INSERT INTO "sales" (
  "invoice_id",
  "sale_date",
  "car_id",
  "customer_id",
  "salesperson_id",
  "price"
)VALUES(
	1,
	'07-25-2016',
	1,
	1,
	1,
	7250.00
);

INSERT INTO "service_ticket" (
  "service_ticket_id",
  "car_id",
  "customer_id",
  "date_recieved",
  "date_returned",
  "billing"
)VALUES(
	1,
	1,
	1,
	'07-25-2016',
	'07-29-2016',
	1337.01
);

INSERT INTO "car_parts" (
  "parts_id",
  "service_ticket_id",
  "part_number",
  "description",
  "parts_price"
)VALUES(
	1,
	1,
	9477,
	'roof-mounted mg-launcher combo',
	1337
);

INSERT INTO "mechanic" (
  "mechanic_id",
  "first_name",
  "last_name"
)VALUES(
	1,
	'Eric',
	'Jiang'
);

INSERT INTO "labor_invoice" (
  "labor_id",
  "mechanic_id",
  "service_ticket_id",
  "parts_id",
  "hours",
  "rate"
)VALUES(
	1,
	1,
	1,
	1,
	5,
	15.00
);

-- ALL THIS HAS BEEN EXECUTED







