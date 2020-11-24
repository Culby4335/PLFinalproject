with data;
use data;

package body Mergesort is
 
   -----------
   -- Merge --
   -----------
 
   function Merge(Left, Right : Collection_Type) return Collection_Type is
      Result : Collection_Type(Left'First..Right'Last);
      lftInd : Index_Type := Left'First;
      rgtInd : Index_Type := Right'First;
      whereToPut : Index_Type := Result'First;
   begin
      while lftInd <= Left'Last and rgtInd <= Right'Last loop
         if Left(lftInd) <= Right(rgtInd) then
            Result(whereToPut) := Left(lftInd);
            lftInd := Index_Type'Succ(lftInd); -- increment lftInd
         else
            Result(whereToPut) := Right(rgtInd);
            rgtInd := Index_Type'Succ(rgtInd); -- increment rgtInd
         end if;
         whereToPut := Index_Type'Succ(whereToPut); -- increment whereToPut
      end loop;
      if lftInd <= Left'Last then
         Result(whereToPut..Result'Last) := Left(lftInd..Left'Last);
      end if;
      if rgtInd <= Right'Last then
         Result(whereToPut..Result'Last) := Right(rgtInd..Right'Last);
      end if;
      return Result;
   end Merge;
   
   function Sort (Item : Collection_Type) return Collection_Type is
      Result : Collection_Type(Item'range);
      Middle : Index_Type;
   begin
      if Item'Length <= 1 then
         return Item;
      else
         Middle := Index_Type'Val((Item'Length / 2) + Index_Type'Pos(Item'First));
         declare
            Left : Collection_Type(Item'First..Index_Type'Pred(Middle));
            Right : Collection_Type(Middle..Item'Last);
         begin
            for I in Left'range loop
               Left(I) := Item(I);
            end loop;
            for I in Right'range loop
               Right(I) := Item(I);
            end loop;
            Left := Sort(Left);
            Right := Sort(Right);
            Result := Merge(Left, Right);
         end;
         return Result;
      end if;
   end Sort;
end Mergesort;
