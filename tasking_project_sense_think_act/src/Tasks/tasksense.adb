with Microbit.IOsForTasking; use Microbit.IOsForTasking;
With Ada.Real_Time; use Ada.Real_Time;
with MicroBit.Console; use MicroBit.Console;
use MicroBit;


package body TaskSense is

   task body sense is
      myClock : Time;
   begin
      Ultrasonic.Setup(19,10);
      loop
         brain.SetMeasurementSensor1;
         Put_Line ("Read" & Distance_cm'Image(brain.GetMeasurementSensor1));
         myClock := Clock; --important to get current time such that the period is exactly 200ms.
                           --you need to make sure that the instruction NEVER takes more than this period. 
                           --make sure to measure how long the task needs, see Tasking_Calculate_Execution_Time example in the repository.
                           --What if for some known or unknown reason the execution time becomes larger?
                           --When Worst Case Execution Time (WCET) is overrun so higher than your set period, see : https://www.sigada.org/ada_letters/dec2003/07_Puente_final.pdf
                           --In this template we put the responsiblity on the designer/developer.
         delay (0.024); --simulate a sensor eg the ultrasonic sensors needs at least 24ms for 400cm range.
            
         delay until myClock + Milliseconds(150); --random period
         end loop;
   end sense;

end TaskSense;
