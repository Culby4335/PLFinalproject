--Written by Michael Janovy
with Ada.Text_Io; use Ada.Text_Io;
with data;
use data;

package body sortOutput is
   procedure doOutput(Item : in out Collection_Type) is
   X : Integer := 1;
   begin
      
      For I in Item'First..Item'Last-1 loop
         if Item(I) = Item(I+1) then
            X := X + 1;
         else 
            Put_Line(Integer'Image(Item(I)) & " occured " & Integer'Image(X) & " time(s).");
            X := 1;
         end if;
      end loop;
      
      if Item'Last-1 /= Item'Last then
         Put_Line(Integer'Image(Item(Item'Last)) & " occured " & Integer'Image(X) & " time(s)");
      end if;
      New_Line;
      
      
      
   end doOutput;
   

end sortOutput;
