with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   procedure RunGame is
      N : Integer;
   begin

      loop
         Put ("Choose a number: ");

         Get (N);
         Put (N); Put_Line ("");

         Put_Line (Integer'Image (N) & " is " & (if N mod 2 = 0 then "even" else "odd"));

         if N in 50 .. 200 then
               Put_Line ("The number " & Integer'Image (N) & " is between [50, 200]!");
               exit;
         end if;

         Put_Line (if (N = 10)
               then "Psiu! try a number between 50 and 200!"
               else "Your number is invalid! Try again");
      end loop;

   end RunGame;

begin

   Put_Line ("Hello, World!");
   RunGame; 

end Main;
