----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.09.2021 16:32:56
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
    Port ( birbo : in STD_LOGIC;
           lt : in STD_LOGIC;
           rbi : in STD_LOGIC;
           x3 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           x1 : in STD_LOGIC;
           x0 : in STD_LOGIC;          
           a : out STD_LOGIC;
           b : out STD_LOGIC;
           c : out STD_LOGIC;
           d : out STD_LOGIC;
           e : out STD_LOGIC;
           f : out STD_LOGIC;
           g : out STD_LOGIC);
end decoder;

architecture Behavioral of decoder is

begin
     a<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or 
     (not x3 and not x2 and x1 and not x0 and lt and birbo) or
     (not x3 and not x2 and x1 and x0 and lt and birbo) or 
     --
     (not x3 and x2 and not x1 and x0 and lt and birbo) or 
     (not x3 and x2 and x1 and x0 and lt and birbo) or
     --
     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
     (x3 and not x2 and not x1 and x0 and lt and birbo) or 
     --
     (x3 and x2 and not x1 and x0 and lt and birbo) or
     --
     (not lt and birbo));
     -------------------------------------------------------------------------------------------------------
     b<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or
     (not x3 and not x2 and not x1 and x0 and lt and birbo) or
     (not x3 and not x2 and x1 and not x0 and lt and birbo) or
     (not x3 and not x2 and x1 and x0 and lt and birbo) or 
     --
     (not x3 and x2 and not x1 and not x0 and lt and birbo) or
     (not x3 and x2 and x1 and x0 and lt and birbo) or
     --
     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
     (x3 and not x2 and not x1 and x0 and lt and birbo) or
     --
     (x3 and x2 and not x1 and not x0 and lt and birbo) or
     --
     (not lt and birbo));
     -------------------------------------------------------------------------------------------------------
     c<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or
     (not x3 and not x2 and not x1 and x0 and lt and birbo) or
     (not x3 and not x2 and x1 and x0 and lt and birbo) or
     --
     (not x3 and x2 and not x1 and not x0 and lt and birbo) or
     (not x3 and x2 and not x1 and x0 and lt and birbo) or
     (not x3 and x2 and x1 and not x0 and lt and birbo) or
     (not x3 and x2 and x1 and x0 and lt and birbo) or
     --
     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
     (x3 and not x2 and not x1 and x0 and lt and birbo) or
     --
     (not lt and birbo));
     -------------------------------------------------------------------------------------------------------
     d<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or 
     (not x3 and not x2 and x1 and not x0 and lt and birbo) or
     (not x3 and not x2 and x1 and x0 and lt and birbo) or 
     --
     (not x3 and x2 and not x1 and x0 and lt and birbo) or
     (not x3 and x2 and x1 and not x0 and lt and birbo) or
     --
     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
     (x3 and not x2 and x1 and not x0 and lt and birbo) or
     (x3 and not x2 and x1 and x0 and lt and birbo) or
     --
     (x3 and x2 and not x1 and x0 and lt and birbo) or
     (x3 and x2 and x1 and not x0 and lt and birbo) or
     --
     (not lt and birbo));
     -------------------------------------------------------------------------------------------------------
     e<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or
     (not x3 and not x2 and x1 and not x0 and lt and birbo) or
     --
     (not x3 and x2 and x1 and not x0 and lt and birbo) or
     --
     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
     (x3 and not x2 and x1 and not x0 and lt and birbo) or
     --
     (x3 and x2 and x1 and not x0 and lt and birbo) or
     --
     (not lt and birbo));
     -------------------------------------------------------------------------------------------------------
     f<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or
     --
     (not x3 and x2 and not x1 and not x0 and lt and birbo) or
     (not x3 and x2 and not x1 and x0 and lt and birbo) or
     (not x3 and x2 and x1 and not x0 and lt and birbo) or
     --
     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
     (x3 and not x2 and not x1 and x0 and lt and birbo) or
     --
     (x3 and x2 and not x1 and not x0 and lt and birbo) or
     (x3 and x2 and not x1 and x0 and lt and birbo) or
     (x3 and x2 and x1 and not x0 and lt and birbo) or
     --
     (not lt and birbo));
     -------------------------------------------------------------------------------------------------------
     g<= ((not x3 and not x2 and x1 and not x0 and lt and rbi and birbo) or
     (not x3 and not x2 and x1 and x0 and lt and birbo) or
     --
     (not x3 and x2 and not x1 and not x0 and lt and birbo) or
     (not x3 and x2 and not x1 and x0 and lt and birbo) or
     (not x3 and x2 and x1 and not x0 and lt and birbo) or
     --
     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
     (x3 and not x2 and not x1 and x0 and lt and birbo) or
     (x3 and not x2 and x1 and not x0 and lt and birbo) or
     (x3 and not x2 and x1 and x0 and lt and birbo) or      
     --
     (x3 and x2 and not x1 and not x0 and lt and birbo) or
     (x3 and x2 and not x1 and x0 and lt and birbo) or
     (x3 and x2 and x1 and not x0 and lt and birbo) or
     --
     (not lt and birbo));
         
end Behavioral;
