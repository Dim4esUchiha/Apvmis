library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity OR_GATE_tb is
end;

architecture bench of OR_GATE_tb is

  component OR_GATE
      Port ( a : in STD_LOGIC;
             b : in STD_LOGIC;
             c : out STD_LOGIC);
  end component;

  signal a: STD_LOGIC;
  signal b: STD_LOGIC;
  signal c: STD_LOGIC;

begin

  uut: OR_GATE port map ( a => a,
                          b => b,
                          c => c );

  stimulus: process
  begin
  
    -- Put initialisation code here
    a<= '0';
    b<= '0';
    wait for 10 ns;
    
    a<= '1';
    b<= '0';
    wait for 10 ns;
    
    a<= '0';
    b<= '1';
    wait for 10 ns;
    
    a<= '1';
    b<= '1';
    wait for 10 ns;
    
    a<= '0';
    b<= '0';
    wait for 10 ns;
    
    -- Put test bench stimulus code here

    wait;
  end process;


end;