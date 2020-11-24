with Ada.Text_Io; use Ada.Text_Io;
with sortAlg;
with sortOutput;
with data;

procedure Main is
   use sortAlg;
   use sortOutput;
   use data;

   --package List_Sort is new Mergesort(Integer, Positive, data.Collection_Type);
   procedure Print(Item : data.Collection_Type) is
   begin
      for I in Item'range loop
         Put(Integer'Image(Item(I)));
      end loop;
      New_Line;
   end Print;
begin
   doOutput(A);
   Put_Line("Sorted");
   A := doSort(A);
   doOutput(A);
end Main;
