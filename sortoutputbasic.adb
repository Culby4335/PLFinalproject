with Ada.Text_Io; use Ada.Text_Io;
with data;
use data;

package body sortOutputBasic is
   procedure doOutput(Item : in out Collection_Type) is
   begin
      For I in Item'Range loop
         Put(Integer'Image(Item(I)));
      end loop;
      New_Line;
   end doOutput;
   

end sortOutputBasic;
