package InsertionSort is
   type Collection_Type is array(Natural range <>) of Integer;
   function InsertionSortAlg(Item : in out Collection_Type)return Collection_Type;
end InsertionSort;
