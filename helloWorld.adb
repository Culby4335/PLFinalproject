with Ada.Text_IO, ADa.Integer_Text_IO;
procedure Main is
    N: Integer;
begin
   Ada.Text_IO.Put_Line("Hello, World!");
   Ada.Text_IO.Put("Please enter a value: ");
   Ada.Integer_Text_IO.Get(N);
   Ada.Text_IO.Put_Line(Integer'Image(N));
   if N > 0 then
      Ada.Text_IO.Put_Line(" > 0 ");
   elsif N < 0 then
      Ada.Text_IO.Put_Line(" < 0 ");
   else
      Ada.Text_IO.Put_Line(" = 0");
   end if;




end Main;
