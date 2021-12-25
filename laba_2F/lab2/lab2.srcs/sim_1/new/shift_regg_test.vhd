LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY shift_regg_test IS
END shift_regg_test;
 
ARCHITECTURE behavior OF shift_regg_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_regg
    PORT(
        A_Q : inout std_logic_vector(7 downto 0);
        g: in std_logic;
        srclr: in std_logic;
        srcken: in std_logic;
        srck: in std_logic;
        srload: in std_logic;
        ds: in std_logic;
        ser0: in std_logic;
        ser1: in std_logic;
        rck: in std_logic;
        Qh : out std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_Q : std_logic_vector(7 downto 0) := "00000000";
   signal g : std_logic := '0';
   signal srclr : std_logic := '0';
   signal srcken : std_logic := '0';
   signal srck : std_logic := '0';
   signal srload : std_logic := '0';
   signal rck : std_logic := '0';
   signal ds : std_logic := '0';
   signal ser0 : std_logic := '0';
   signal ser1 : std_logic := '0';

 	--Outputs
   signal Qh : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_regg PORT MAP (
          A_Q => A_Q,
          g => g,
          srclr => srclr,
          srcken => srcken,
          srck => srck,
          srload => srload,
          rck => rck,
          ds => ds,
          ser0 => ser0,
          ser1 => ser1,
          Qh => Qh
        );

 

   -- Stimulus process
   stim_proc: process
	 variable I :
      integer range 0 to 100;
      variable J :
            integer range 0 to 100;
   begin		
		-- wait for 2* period;
		g <='1';
		srclr <= '1';
		srload <= '0';
		srcken <= '1';
		srck <= '0';
		rck <= '0';
		ser0 <= '0';
		ser1 <= '1';
		ds <= '0';
		
        wait for 3 * period;
		srclr <= '0';
		--srcken <= '1';
		g <= '0';	
		wait for period;
		
		
        A_Q <= "10100110";
		wait for period;
		rck <= '1';
		wait for period;
		rck <= '0';
		wait for period;
		g <= '1';
        A_Q <= "ZZZZZZZZ";
		wait for period;
		srload <= '1';
		--g <= '0';
		--A_Q <= "ZZZZZZZZ";
		wait for period;
		--wait for period;
		srload <= '0';
		srcken <= '0';
		wait for period;
		srck <= '1';
		wait for period;
		srck <= '0';
		wait for period;
		srck <= '1';

		wait for period;
		srck <= '0';
		wait for period;
		srck <= '1';

		wait for period;
		srck <= '0';

		
		I := 0;
		  while (I <= 100) loop
				if (I mod 2 = 1) then
					srck <= '1';
				else
					srck <= '0';
					ds<= not(ds);
				end if;
				if(I=30) then
                srclr<= '1';
                end if;
                if(I=32) then
                srclr<= '0';
                end if;
				if(I=50) then
				srcken<= '1';
				end if;
				if(I=75) then
                srcken<= '0';
                end if;
				I := I + 1;
				wait for period;
			end loop; 
				
		wait for period;
      wait;
   end process;

END;