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
    signal sig1, sig2, sig3, sig4, sig5, sig6 : STD_LOGIC;
    signal sig7, sig8, sig9, sig10, sig11, sig12, sig13 : STD_LOGIC;
    signal sig14, sig15, sig16: STD_LOGIC;
    signal sig17, sig18, sig19: STD_LOGIC;
    signal sig20, sig21: STD_LOGIC;
    signal sig22, sig23, sig24: STD_LOGIC;
    signal sig25, sig26, sig27, sig28, sig29, sig30, sig31: STD_LOGIC;
begin

    
    sig1 <= not(sig5 and x0);--1
    sig2 <= not(sig5 and x1);--1
    sig3 <= not(sig5 and x2);--1
    sig4 <= not x3;--1
    sig5 <= not(not lt); -- 1
    sig6 <= not(not rbi);-- 1
    
    --------------------------------
    sig7<= not(sig1 and sig11);--0
    sig8<= not(sig2 and sig11);--0
    sig9<= not(sig3 and sig11);--0
    sig10<= not(sig4 and sig11);--0
    sig11<= not (not sig12);--1
    sig12<= sig13 or birbo;--1
    sig13<= sig5 and sig6 and sig4 and sig3 and sig2 and sig1;--1
    
    --------------------------------
    sig14<= sig8 and sig10;--0
    sig15<= sig1 and sig9;--0
    sig16<= sig7 and sig2 and sig3 and sig4;--0
    
    --------------------------------
    sig17<= sig8 and sig10;
    sig18<= sig7 and sig2 and sig9;
    sig19<= sig1 and sig8 and sig9;
    
    --------------------------------
    sig20<= sig9 and sig10;
    sig21<= sig1 and sig3 and sig8;
    
    --------------------------------
    sig22<= sig2 and sig3 and sig7;
    sig23<= sig1 and sig2 and sig9;
    sig24<= sig7 and sig8 and sig9;
    
    --------------------------------
    sig25<= sig7;
    sig26<= sig2 and sig9;
    
    --------------------------------
    sig27<= sig7 and sig8;
    sig28<= sig3 and sig8;
    sig29<= sig7 and sig3 and sig4;
    
    --------------------------------
    sig30<= sig7 and sig8 and sig9;
    sig31<= sig2 and sig3 and sig4 and sig5;

        --mini question
    a<= not(sig14 or sig15 or sig16);
    b<= not(sig17 or sig18 or sig19);
    c<= not(sig20 or sig21);
    d<= not(sig22 or sig23 or sig24);
    e<= not(sig25 or sig26);
    f<= not(sig27 or sig28 or sig29);
    g<= not(sig30 or sig31);





--     a<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or 
--     (not x3 and not x2 and x1 and not x0 and lt and birbo) or
--     (not x3 and not x2 and x1 and x0 and lt and birbo) or 
--     --
--     (not x3 and x2 and not x1 and x0 and lt and birbo) or 
--     (not x3 and x2 and x1 and x0 and lt and birbo) or
--     --
--     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
--     (x3 and not x2 and not x1 and x0 and lt and birbo) or 
--     --
--     (x3 and x2 and not x1 and x0 and lt and birbo) or
--     --
--     (not lt and birbo));
--     -------------------------------------------------------------------------------------------------------
--     b<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or
--     (not x3 and not x2 and not x1 and x0 and lt and birbo) or
--     (not x3 and not x2 and x1 and not x0 and lt and birbo) or
--     (not x3 and not x2 and x1 and x0 and lt and birbo) or 
--     --
--     (not x3 and x2 and not x1 and not x0 and lt and birbo) or
--     (not x3 and x2 and x1 and x0 and lt and birbo) or
--     --
--     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
--     (x3 and not x2 and not x1 and x0 and lt and birbo) or
--     --
--     (x3 and x2 and not x1 and not x0 and lt and birbo) or
--     --
--     (not lt and birbo));
--     -------------------------------------------------------------------------------------------------------
--     c<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or
--     (not x3 and not x2 and not x1 and x0 and lt and birbo) or
--     (not x3 and not x2 and x1 and x0 and lt and birbo) or
--     --
--     (not x3 and x2 and not x1 and not x0 and lt and birbo) or
--     (not x3 and x2 and not x1 and x0 and lt and birbo) or
--     (not x3 and x2 and x1 and not x0 and lt and birbo) or
--     (not x3 and x2 and x1 and x0 and lt and birbo) or
--     --
--     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
--     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
--     (x3 and not x2 and not x1 and x0 and lt and birbo) or
--     --
--     (not lt and birbo));
--     -------------------------------------------------------------------------------------------------------
--     d<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or 
--     (not x3 and not x2 and x1 and not x0 and lt and birbo) or
--     (not x3 and not x2 and x1 and x0 and lt and birbo) or 
--     --
--     (not x3 and x2 and not x1 and x0 and lt and birbo) or
--     (not x3 and x2 and x1 and not x0 and lt and birbo) or
--     --
--     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
--     (x3 and not x2 and x1 and not x0 and lt and birbo) or
--     (x3 and not x2 and x1 and x0 and lt and birbo) or
--     --
--     (x3 and x2 and not x1 and x0 and lt and birbo) or
--     (x3 and x2 and x1 and not x0 and lt and birbo) or
--     --
--     (not lt and birbo));
--     -------------------------------------------------------------------------------------------------------
--     e<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or
--     (not x3 and not x2 and x1 and not x0 and lt and birbo) or
--     --
--     (not x3 and x2 and x1 and not x0 and lt and birbo) or
--     --
--     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
--     (x3 and not x2 and x1 and not x0 and lt and birbo) or
--     --
--     (x3 and x2 and x1 and not x0 and lt and birbo) or
--     --
--     (not lt and birbo));
--     -------------------------------------------------------------------------------------------------------
--     f<= ((not x3 and not x2 and not x1 and not x0 and lt and rbi and birbo) or
--     --
--     (not x3 and x2 and not x1 and not x0 and lt and birbo) or
--     (not x3 and x2 and not x1 and x0 and lt and birbo) or
--     (not x3 and x2 and x1 and not x0 and lt and birbo) or
--     --
--     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
--     (x3 and not x2 and not x1 and x0 and lt and birbo) or
--     --
--     (x3 and x2 and not x1 and not x0 and lt and birbo) or
--     (x3 and x2 and not x1 and x0 and lt and birbo) or
--     (x3 and x2 and x1 and not x0 and lt and birbo) or
--     --
--     (not lt and birbo));
--     -------------------------------------------------------------------------------------------------------
--     g<= ((not x3 and not x2 and x1 and not x0 and lt and birbo) or --(not x3 and not x2 and x1 and not x0 and lt and rbi and birbo) KEKW
--     (not x3 and not x2 and x1 and x0 and lt and birbo) or
--     --
--     (not x3 and x2 and not x1 and not x0 and lt and birbo) or
--     (not x3 and x2 and not x1 and x0 and lt and birbo) or
--     (not x3 and x2 and x1 and not x0 and lt and birbo) or
--     --
--     (x3 and not x2 and not x1 and not x0 and lt and birbo) or
--     (x3 and not x2 and not x1 and x0 and lt and birbo) or
--     (x3 and not x2 and x1 and not x0 and lt and birbo) or
--     (x3 and not x2 and x1 and x0 and lt and birbo) or      
--     --
--     (x3 and x2 and not x1 and not x0 and lt and birbo) or
--     (x3 and x2 and not x1 and x0 and lt and birbo) or
--     (x3 and x2 and x1 and not x0 and lt and birbo) or
--     --
--     (not lt and birbo));
         
end Behavioral;
