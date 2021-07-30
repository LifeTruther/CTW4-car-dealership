# CTW4-car-dealership
A weekend SQL project. We made a rudimentary database using Lucidchart and PostgreSQL.
I used the Lucidchart export to generate the tables, and then a combination of SQL commands
and stored functions to enter a few data points.

Connections and Organization:

Our two central tables are 'customer' and 'car'. 

The customer_id functions as a unique identifier for the owner of a car, the buyer of a car, and the purchaser of repair services.

The car_id identifies the car that is being sold or worked on.

Every sale of a car is linked to one salesperson, and is identified with an invoice_id unique to the sale.
The four remaining tables were created to process repairs.

The service_ticket_id is the unique identifier for a repair job. 

The service_ticket table includes the car_id from car, date received and returned, and billing, which is the total cost of repairs.

The car_parts table stores information about parts used in repairs, and the the mechanic table provides additinal information on mechanics.

The labor_invoice table. Now this was kind of interesting. This table functions as a repository for all billable actions associated with a repair.
For example? Was a part installed? Maybe that's a different labor rate than other tasks, and you can instantiate it there.
This table organizes all of the billable actions into a labor_id that has an associated number of hours, and rate. 
So in theory, we can calculate total labor cost by multiplying hours by rate for each labor_id associated with a given service_ticket_id to calculat the total cost of labor for a given job.

