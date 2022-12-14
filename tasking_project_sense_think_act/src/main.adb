with MyController; -- This embeds and instantiates the MyController package
with ada.text_io; use ada.text_io;
with ada.Real_Time; use ada.real_time;

-- NOTE ----------
-- See the mycontroller_empty package first for a single file empty Sense-Think-Act (STA) template
-- The mycontroller package contains a better structured STA template with each task having its own file
-- Build your own controller from scratch using the template and structured coding principles as a guide line.
-- Use
------------------

--Empty main running as a task currently set to lowest priority. Can be used as it is a normal task!

Procedure Main with Priority => 0 is
begin
   loop -- We need a main loop, otherwise it constantly reboots!
        -- A reboot can be seen in the Serial Ports (View -> Serial Port, select com port, set baudrate to 115200 and press reset button on Microbit)
        -- Every time the Micro:Bit reboots it will begin with a "0" symbol in your Serial Port monitor.
      null;
   end loop;
end Main;
