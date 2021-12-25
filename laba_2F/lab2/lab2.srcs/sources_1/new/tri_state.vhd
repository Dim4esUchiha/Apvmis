library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tri_state is
port (a_in : in std_logic;
    oe: in std_logic;
    a_out: out std_logic);
end tri_state;

architecture Behavioral of tri_state is
begin
    process(a_in, oe)
    begin
        if(oe = '1') then
            a_out <= not a_in;
        else
            a_out <= 'Z';
        end if;
    end process;
end Behavioral;
