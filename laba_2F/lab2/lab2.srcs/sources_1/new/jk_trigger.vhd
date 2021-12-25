library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jk_trigger is
    Port (
        NOT_R: in std_logic;
        NOT_S: in std_logic;
        J: in std_logic;
        K: in std_logic;
        CLK: in std_logic;
        Q: out std_logic;
        NOT_Q: out std_logic
    );
end jk_trigger;

architecture Behavioral of jk_trigger is
   signal temp: std_logic := '0';
   
begin
    process (CLK, NOT_R, NOT_S)
    begin
        if NOT_R='0' and NOT_S='0' then 
            temp <= 'X';
        elsif NOT_R='0' then   
            temp <= '0';
        elsif NOT_S='0' then   
            temp <= '1';
        elsif rising_edge(CLK) then                 
            if (J='0' and K='0') then
                temp <= temp;
            elsif (J='0' and K='1') then
                temp <= '0';
            elsif (J='1' and K='0') then
                temp <= '1';
            elsif (J='1' and K='1') then
                temp <= not (temp);
            end if;
        end if;
    end process;
    
    Q <= temp;
    NOT_Q <= not(temp);
end Behavioral;