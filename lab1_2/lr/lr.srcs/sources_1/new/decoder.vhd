----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/21/2021 12:31:34 AM
-- Design Name: 
-- Module Name: decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
    Port (X3 : IN STD_LOGIC;
          X2 : IN STD_LOGIC;
          X1 : IN STD_LOGIC;
          X0 : IN STD_LOGIC;
          LT : in STD_LOGIC;
          RBI : in STD_LOGIC;
          A : OUT STD_LOGIC;
          B : OUT STD_LOGIC;
          C : OUT STD_LOGIC;
          D : OUT STD_LOGIC;
          E : OUT STD_LOGIC;
          F : OUT STD_LOGIC;
          G : OUT STD_LOGIC );
end decoder;

architecture Behavioral of decoder is

begin

process(X3, X2, X1, X0, LT, RBI)
begin
    --0
    if (X3 = '0' AND X2 = '0' AND X1 = '0' AND X0 = '0' AND LT = '1' AND RBI = '1') THEN 
            A<='1';
            B<='1';
            C<='1';
            D<='1';
            E<='1';
            F<='1';
            G<='0';
    END IF; 
    --1
    if (X3 = '0' AND X2 = '0' AND X1 = '0' AND X0 = '1' AND LT = '1') THEN 
            A<='0';
            B<='1';
            C<='1';
            D<='0';
            E<='0';
            F<='0';
            G<='0';
    END IF;
    --2
    if (X3 = '0' AND X2 = '0' AND X1 = '1' AND X0 = '0' AND LT = '1') THEN 
            A<='1';
            B<='1';
            C<='0';
            D<='1';
            E<='1';
            F<='0';
            G<='1';
    END IF;
    --3
    if (X3 = '0' AND X2 = '0' AND X1 = '1' AND X0 = '1' AND LT = '1') THEN 
            A<='1';
            B<='1';
            C<='1';
            D<='1';
            E<='0';
            F<='0';
            G<='1';
    END IF;
    --4
    if (X3 = '0' AND X2 = '1' AND X1 = '0' AND X0 = '0' AND LT = '1') THEN 
            A<='0';
            B<='1';
            C<='1';
            D<='0';
            E<='0';
            F<='1';
            G<='1';
    END IF;
    --5
    if (X3 = '0' AND X2 = '1' AND X1 = '0' AND X0 = '1' AND LT = '1') THEN 
            A<='1';
            B<='0';
            C<='1';
            D<='1';
            E<='0';
            F<='1';
            G<='1';
    END IF;
    --6
    if (X3 = '0' AND X2 = '1' AND X1 = '1' AND X0 = '0' AND LT = '1') THEN 
            A<='0';
            B<='0';
            C<='1';
            D<='1';
            E<='1';
            F<='1';
            G<='1';
    END IF;
    --7
    if (X3 = '0' AND X2 = '1' AND X1 = '1' AND X0 = '1' AND LT = '1') THEN 
            A<='1';
            B<='1';
            C<='1';
            D<='0';
            E<='0';
            F<='0';
            G<='0';
    END IF;
    ------------------------------------------------------------------------------------------
    --8
    if (X3 = '1' AND X2 = '0' AND X1 = '0' AND X0 = '0' AND LT = '1') THEN 
            A<='1';
            B<='1';
            C<='1';
            D<='1';
            E<='1';
            F<='1';
            G<='1';
    END IF;
    --9
    if (X3 = '1' AND X2 = '0' AND X1 = '0' AND X0 = '1' AND LT = '1') THEN 
            A<='1';
            B<='1';
            C<='1';
            D<='0';
            E<='0';
            F<='1';
            G<='1';
    END IF;
    --10
    if (X3 = '1' AND X2 = '0' AND X1 = '1' AND X0 = '0' AND LT = '1') THEN 
            A<='0';
            B<='0';
            C<='0';
            D<='1';
            E<='1';
            F<='0';
            G<='1';
    END IF;
    --11
    if (X3 = '0' AND X2 = '0' AND X1 = '1' AND X0 = '1' AND LT = '1') THEN 
            A<='0';
            B<='0';
            C<='1';
            D<='1';
            E<='0';
            F<='0';
            G<='1';
    END IF;
    --12
    if (X3 = '1' AND X2 = '1' AND X1 = '0' AND X0 = '0' AND LT = '1') THEN 
            A<='0';
            B<='1';
            C<='0';
            D<='0';
            E<='0';
            F<='1';
            G<='1';
    END IF;
    --13
    if (X3 = '1' AND X2 = '1' AND X1 = '0' AND X0 = '1' AND LT = '1') THEN 
            A<='1';
            B<='0';
            C<='0';
            D<='1';
            E<='0';
            F<='1';
            G<='1';
    END IF;
    --14
    if (X3 = '1' AND X2 = '1' AND X1 = '1' AND X0 = '0' AND LT = '1') THEN 
            A<='0';
            B<='0';
            C<='0';
            D<='1';
            E<='1';
            F<='1';
            G<='1';
    END IF;
    --15
    if (X3 = '1' AND X2 = '1' AND X1 = '1' AND X0 = '1' AND LT = '1') THEN 
            A<='0';
            B<='0';
            C<='0';
            D<='0';
            E<='0';
            F<='0';
            G<='0';
    END IF;
    --17
    if (X3 = '0' AND X2 = '0' AND X1 = '0' AND X0 = '0' AND LT = '1' AND RBI = '0') THEN 
            A<='0';
            B<='0';
            C<='0';
            D<='0';
            E<='0';
            F<='0';
            G<='0';
    END IF;
    --16
--    ELSIF (birbo = '0') THEN 
--            A<='0';
--            B<='0';
--            C<='0';
--            D<='0';
--            E<='0';
--            F<='0';
--            G<='0';
--    END IF;
    --18
    if (LT = '0') THEN 
            A<='1';
            B<='1';
            C<='1';
            D<='1';
            E<='1';
            F<='1';
            G<='1';
    END IF;
    
end process;
end Behavioral;
