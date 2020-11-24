--Written by Zack Culberson
with data;
use data;

package body sortAlg is 
   function doSort (Item : in out Collection_Type) return Collection_Type is
      firstVal : Natural := Item'First;
      lastVal  : Natural := Item'Last;
      Value : Integer;
      J     : Integer;
   begin
      for I in (firstVal + 1)..lastVal loop
      Value := Item(I);
      J := I - 1;
      while J in Item'range and then Item(J) > Value loop
         Item(J + 1) := Item(J);
         J := J - 1;
         end loop;
         Item(J + 1) := Value;
      end loop;
      return Item;
   end doSort;
   
end sortAlg;
