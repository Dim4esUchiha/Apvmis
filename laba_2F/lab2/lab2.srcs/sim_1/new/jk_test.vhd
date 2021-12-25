library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jk_test is
--  Port ( );
end jk_test;

architecture Behavioral of jk_test is
    component jk_trigger
    port(
         J : in  std_logic;
         K : in  std_logic;
         CLK : in  std_logic;
         NOT_R : in  std_logic;
         NOT_S : in  std_logic;
         Q : out  std_logic;
         NOT_Q: out std_logic
        ); 
    end component;
    
    signal J : std_logic := '0';
    signal K : std_logic := '0';
    signal CLK : std_logic := '0';
    signal NOT_R : std_logic := '1';
    signal NOT_S : std_logic := '1';
    signal Q : std_logic;
    signal NOT_Q : std_logic;
    
    constant clk_period : time := 16 ns; --10

    begin
    jk_trigger1: jk_trigger port map (
        J => J,
        K => K,
        CLK => CLK,
        NOT_R => NOT_R,
        NOT_S => NOT_S,
        Q => Q,
        NOT_Q => NOT_Q
    );

    clk_process: process
    begin       
        CLK <= '0';
        wait for clk_period / 2;
        CLK <= '1';
        wait for clk_period / 2;
    end process;
    
    test_process: process
        variable temp : std_logic := '0';
    begin                
        for i in 0 to 10 loop
            J <= temp;
            wait for 2 ns;
            K <= not(temp);
            temp := not(temp);
            
            wait for 20 ns;
        end loop;
        
        for i in 0 to 10 loop
            J <= temp;
            wait for 2 ns;
            K <= temp;
            temp := not(temp);
            
             wait for 20 ns;
        end loop;
        
        NOT_S <= '0';
        NOT_R <= '1';
        for i in 0 to 10 loop
            J <= temp;
            wait for 2 ns;
            K <= not(temp);
            temp := not(temp);
            
             wait for 20 ns;
        end loop;
        
        NOT_S <= '1';
        NOT_R <= '0';
        for i in 0 to 10 loop
            J <= temp;
            wait for 2 ns;
            K <= temp;
            temp := not(temp);
            
             wait for 20 ns;
        end loop;
              
        NOT_S <= '1';
        NOT_R <= '1';  
    end process;

end Behavioral;