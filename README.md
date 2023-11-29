# Irctc 

dbms_assignment

IntercityExpress Database Assignment

Group Members: Set A:-Khushikaur Gulati
              23112012
               Set B:-Patra Tanmoy Gokul 
              23112028
               Set C:-Yeole Ritesh Mohan 
              23112044



Credits:-
Entity Relationship Diagram:-Khushi Kaur Gulati,Ritesh Yeole And Tanmoy Patra.
Schema And Normalisation:-Ritesh Yeole And  Khushi Kaur Gulati.
Data:- Ritesh Yeole And  Khushi Kaur Gulati.
Readme File:-Ritesh Yeole.

Note:- Since Data has been inserted manually so there are limited data enteries. Entity relationship diagram has been submitted in a different file. Part 2 of the assignment for every individual is submitted as text file.

Agents store the information about Agents.Agent I'd is the primary key.Information includes Agent name and no.of confirm bookings.
Bookings has all information of bookings.Booking I'd is the primary key.It has agent I'd,Route id,tripdate, total seats sold and among that which are child seats,adult seats and senior citizen seats.
Coaches has the information of the coaches.Coach I'd is the primary key.Train to.which the coach belongs and last service date.
Commission gives the information about the commission of agents on booking .Commission I'd is the primary key and agent I'd is the foreign key references table Agents.Month and year of booking tickets and total amount.
Drivers have Driverid as primary key.It has details about Drivers i.e Driver name,phone and city of residence.
Passenger has passenger id as primary key.Passenger name,trip count i.e total no.of trips done,Age of passenger and the type of passenger.
Route has RouteID as primary key. Distance of the route.Boarding station and Arrival station of the routes.
Route operatingdays is the normalised form of Route table.It includes Routeid and Days of week.
Station has stationid as primary key.It has station name.
Ticket consist of Ticket ID as primary passenger id the foreign key.Price of the ticket.
Trains has Trainid as primary key. Train name,RouteID is the foreign key and maintenance.
Trips has trip I'd as primary key.Routeid is the foreign key.Trip date,Drivername,Ontime and remarks.


