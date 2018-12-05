with Ada.Text_IO;  use Ada.Text_IO;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Calendar; use Ada.Calendar;


procedure AdaTestCode is

--Function that takes an integer from a user and inputs it as a fibonacci
--sequence
    function sixthPowers(number : in integer) return integer is
      begin
        return (number * number * number * number * number * number);
    end sixthPowers;

--item declaration
    number : integer;
    startTime, endTime : Time;
    milliSecs : Duration;
    result : integer;

--Main code that asks for a number to raise to the 6th power

--Duration calculates the time it takes for the program to run
begin
    put_line("Please enter your number to get its 6th power value: ");
    get(number);
    startTime := Clock;
    result := sixthPowers(number);
    endTime := Clock;
    milliSecs := (endTime - startTime) * 1000;

    put_line("Calculated value of number to the 6th power: " & Integer'Image(result));
    put_line("This took = " & Duration'Image(milliSecs) & " milliseconds to run.");

end adaTestCode;
