# Irctc 

bms_assignment

IntercityExpress Database Assignment

Group Members: Set A:-Khushikaur Gulati
              23112012
               Set B:-Patra Tanmoy Gokul 
              23112028
               Set C:-Yeole Ritesh Mohan 
              23112044



1. **Agents:**
    - AgentID (Primary Key)
    - AgentName
    - NoOfConfBooking

2. **Bookings:**
    - BookingID (Primary Key)
    - AgentID
    - RouteID
    - TripDate
    - SeatsSold
    - ChildSeats
    - AdultSeats
    - SeniorCitizenSeats

3. **Coaches:**
    - CoachID (Primary Key)
    - TrainID
    - LastServiceDate
    - Mileage

4. **Commission:**
    - CommissionID (Primary Key)
    - AgentID
    - MonthYear
    - Amount

5. **Drivers:**
    - DriverID (Primary Key)
    - DriverName
    - Phone
    - CityOfResidence

6. **Passengers:**
    - PassengerID (Primary Key)
    - PassengerName
    - TripCount
    - Age
    - Type

7. **RouteOperatingDays:**
   Normalized From The Route Table
    - RouteID
    - DayOfWeek


8. **Routes:**
    - RouteID (Primary Key)
    - Distance
    - BoardStation
    - ArrivedStation

9. **Station:**
    - StationID (Primary Key)
    - StationName
  
10. **Ticket:**
    - TicketID (Primary Key)
    - PassengerID
    - Price

11. **Trains:**
    - TrainID (Primary Key)
    - TrainName
    - RouteID
    - MaintenanceStatus

12. **Trips:**
    - TripID (Primary Key)
    - RouteID 
    - TripDate
    - DriverName
    - OnTime
    - Remarks

This outline provides a basic structure for each table and their potential attributes. Depending on the specific requirements and relationships between tables, you might need to adjust or expand the schema.
