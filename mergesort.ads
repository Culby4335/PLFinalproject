with data;
use data; 

--generic
   --type Element_Type is private;
   --type Collection_Type is array(Index_Type range <>) of Element_Type;
   --with function "<"(Left, Right : Element_Type) return Boolean is <>;
   --with function "<="(Left, Right : Element_Type) return Boolean is <>;
 
package sortAlg is
   function doSort(Item : Collection_Type) return Collection_Type;
end sortAlg;
