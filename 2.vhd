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
 case I is
   when "000" => O <= "011";
   when "010" => O <= "100";
   when "100" => O <= "101";
   when "110" => O <= "110";
   when others => null;
 end case;

end process;
end rtl;
