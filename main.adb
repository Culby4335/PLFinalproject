with Ada.Text_Io; use Ada.Text_Io;
--with Mergesort,
with InsertionSort;
with sortOutput;
with data;

procedure Main is
   use InsertionSort;
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
   A : data.Collection_Type := (4, 9, 3, -2, 0, 7, -5, 1, 6, 8);
   List : data.Collection_Type := (1, 5, 2, 7, 3, 9, 4, 6);
begin
   Print(List);
   Put_Line("Sorted by Merge sort.");
   --Print(List_Sort.Sort(List));


   Put_Line("Insertion Sort:");
   doOutput(A);
   Put_Line("Sorted");
   A := InsertionSortAlg(A);
   doOutput(A);
end Main;
