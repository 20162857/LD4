library ieee;
use ieee.std_logic_1164.all;
 
entity IR is
  port (I :	in std_logic_vector(2 downto 0);
        O : out std_logic_vector(2 downto 0)
    );
end IR;
 
architecture rtl of IR is
begin
process (I)
begin
      if I = "000" then O <= "011";
   elsif I = "010" then O <= "100";
   elsif I = "100" then O <= "101";
   elsif I = "110" then O <= "110";
   end if;
 
end process;
end rtl;
