library ieee;
use ieee.std_logic_1164.all;
 
entity IR is
  port (I :	in std_logic_vector(2 downto 0);
	    O :	out std_logic_vector(2 downto 0)
    );
end IR;
 
architecture rtl of IR is
begin
      O <= "011" when (I = "000") else
		   "100" when (I = "010") else
		   "101" when (I = "100") else
		   "110" when (I = "110") else
		   "000";
  
end rtl;