with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure DatesOutput is

   type Month is (Dec, Jan);

   --make changes to a current package for the month date
   package MonthChange is new Ada.Text_IO.Enumeration_IO(Month);
   use MonthChange;

   --declare the type "date" as a record and include variables with it.
   --these do not need to be variables of the same type, but they can be
   -- applied to any object variable, such as the one declared below the record
   type Date is
      record
         DateMonth : Month;
         DateDay   : integer range 1..31;
         DateYear  : integer;
         DateHour  : integer range 1..24;
         DateMin   : integer range 1..59;
      end record;

   --Declare the object variable "final"
   Final : Date;
   WinterQ : Date;

begin
  --Set the Month, Date, Year, and time information for the Final and WinterQ
   Final.DateMonth := Dec;
   Final.DateDay := 6;
   Final.DateYear := 2018;
   Final.DateHour := 10;
   Final.DateMin := 30;

   WinterQ.DateMonth := Jan;
   WinterQ.DateDay := 3;
   WinterQ.DateYear := 2019;

   --output information
   put("Our 3220 class final exam is on ");
   put(Final.DateMonth, 2);
   put(Final.DateDay, 2);
   put(",");
   put(Final.DateYear, 5);
   put(" at ");
   put(Final.DateHour, 2);
   put(":");
   put(Final.DateMin, 2);
   New_Line;

   put("We return to SPU for Winter Quarter on  ");
   put(WinterQ.DateMonth, 2);
   put(WinterQ.DateDay, 2);
   put(",");
   put(WinterQ.DateYear, 5);


end DatesOutput;
