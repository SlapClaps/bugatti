With Ada.Real_Time; use Ada.Real_Time;
with Microbit.IOsForTasking; use Microbit.IOsForTasking;

package body TaskThink is

  task body think is
      myClock : Time;
   begin
      loop
         myClock := Clock;
        
         --make a decision (could be wrapped nicely in a procedure)
         if integer (brain.GetMeasurementSensor1) > 5 then            
            MotorDriver.SetDirection (Forward); --our decision what to do based on the sensor values        
         else
            MotorDriver.SetDirection (Stop); 
         end if;
         
         delay until myClock + Milliseconds(50);  --random period
         end loop;
   end think;


end TaskThink;
