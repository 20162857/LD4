library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic_vector(2 downto 0);
  signal w_RESULT1 : std_logic_vector(2 downto 0);

  component IR is
    port (
        I : in std_logic_vector(2 downto 0);
        O : out std_logic_vector(2 downto 0));
  end component IR;

begin
  and_gate_INST : IR
    port map (
      I    => r_SIG1,
      O    => w_RESULT1
      );
	  

  process is
  begin
    r_SIG1 <= "000";
    wait for 10 ns;
    r_SIG1 <= "010";
    wait for 10 ns;
    r_SIG1 <= "100";
    wait for 10 ns;
	r_SIG1 <= "110";
	wait for 10 ns;
  end process;

end behave;