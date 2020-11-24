with Ada.Text_Io; use Ada.Text_Io;
with Mergesort, InsertionSort;

procedure Main is
   use InsertionSort;
   type List_Type is array(Positive range <>) of Integer;
   package List_Sort is new Mergesort(Integer, Positive, List_Type);
   procedure Print(Item : List_Type) is
   begin
      for I in Item'range loop
         Put(Integer'Image(Item(I)));
      end loop;
      New_Line;
   end Print;
   A : InsertionSort.Collection_Type := (4, 9, 3, -2, 0, 7, -5, 1, 6, 8);
   List : List_Type := (1, 5, 2, 7, 3, 9, 4, 6);
begin
   Print(List);
   Put_Line("Sorted by Merge sort.");
   Print(List_Sort.Sort(List));
   Put_Line("Insertion Sort:");
   For I in A'Range loop
      Put(Integer'Image(A(I)));
   end loop;
   New_Line;
   A := InsertionSortAlg(A);
   Put_Line("Sorted");
   For J in A'Range loop
      Put(Integer'Image(A(J)));
   end loop;
end Main;
