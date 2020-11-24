package body InsertionSort is 
   function InsertionSortAlg (Item : in out Collection_Type) return Collection_Type is
      First : Natural := Item'First;
      Last  : Natural := Item'Last;
      Value : Integer;
      J     : Integer;
   begin
      for I in (First + 1)..Last loop
      Value := Item(I);
      J := I - 1;
      while J in Item'range and then Item(J) > Value loop
         Item(J + 1) := Item(J);
         J := J - 1;
         end loop;
         Item(J + 1) := Value;
      end loop;
      return Item;
   end InsertionSortAlg;
   
end InsertionSort;
