with data;
use data;

package body sortAlg is
 
   -----------
   -- Merge --
   -----------
 
   function Merge(Left, Right : Collection_Type) return Collection_Type is
      Result : Collection_Type(Left'First..Right'Last);
      lftInd : Natural := Left'First;
      rgtInd : Natural := Right'First;
      whereToPut: Natural := Result'First;
   begin
      while lftInd <= Left'Last and rgtInd <= Right'Last loop
         if Left(lftInd) <= Right(rgtInd) then
            Result(whereToPut) := Left(lftInd);
            lftInd := Natural'Succ(lftInd); -- increment lftInd
         else
            Result(whereToPut) := Right(rgtInd);
            rgtInd := Natural'Succ(rgtInd); -- increment rgtInd
         end if;
         whereToPut := Natural'Succ(whereToPut); -- increment whereToPut
      end loop;
      if lftInd <= Left'Last then
         Result(whereToPut..Result'Last) := Left(lftInd..Left'Last);
      end if;
      if rgtInd <= Right'Last then
         Result(whereToPut..Result'Last) := Right(rgtInd..Right'Last);
      end if;
      return Result;
   end Merge;
   
   function doSort (Item : Collection_Type) return Collection_Type is
      Result : Collection_Type(Item'range);
      Middle : Natural;
   begin
      if Item'Length <= 1 then
         return Item;
      else
         Middle := Natural'Val((Item'Length / 2) + Natural'Pos(Item'First));
         declare
            Left : Collection_Type(Item'First..Natural'Pred(Middle));
            Right : Collection_Type(Middle..Item'Last);
         begin
            for I in Left'range loop
               Left(I) := Item(I);
            end loop;
            for I in Right'range loop
               Right(I) := Item(I);
            end loop;
            Left := doSort(Left);
            Right := doSort(Right);
            Result := Merge(Left, Right);
         end;
         return Result;
      end if;
   end doSort;
end sortAlg;
