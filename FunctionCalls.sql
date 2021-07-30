-- stored function 1: adding a customer

CREATE OR REPLACE FUNCTION add_customer(
  "customer_id" INTEGER,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "phone_number" NUMERIC(15),
  "address" VARCHAR(100),
  "billing_info" VARCHAR(100)
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO customer("customer_id","first_name","last_name","phone_number","address","billing_info")
	VALUES("customer_id","first_name","last_name","phone_number","address","billing_info");
END;
$MAIN$
LANGUAGE plpgsql

--Calling the customer insertion

SELECT add_customer(3,'Napoleon','Bonaparte',1234567890,'The Battle at Waterloo, France','his brass buttons and sheer pluck')

-- stored function 2: adding a car

CREATE OR REPLACE FUNCTION add_car(
  "car_id" INTEGER,
  "customer_id" INTEGER,
  "vin_number" VARCHAR(17),
  "make" VARCHAR(50),
  "model" VARCHAR(50),
  "color" VARCHAR(50),
  "year_" NUMERIC(4)
)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO car("car_id","customer_id","vin_number","make","model","color","year_")
	VALUES("car_id","customer_id","vin_number","make","model","color","year_");
END;
$MAIN$
LANGUAGE plpgsql

-- calling my car function

SELECT add_car(3,2,'IWASBESTINTHEWEST','Rolls-Royce','Ghost','Grey',1967)

