library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_regg is
PORT(
	--a,b,c,d,e,f,g,h: inout std_logic;
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
end shift_regg;

architecture Behavioral of shift_regg is
component jk_trigger
        port(
           NOT_R: in std_logic;
           NOT_S: in std_logic;
           J: in std_logic;
           K: in std_logic;
           CLK: in std_logic;
           Q: out std_logic;
           NOT_Q: out std_logic
        );
    end component;

signal d1_q: std_logic;
signal d1_notq: std_logic;

signal d2_q: std_logic;
signal d2_notq: std_logic;

signal d3_q: std_logic;
signal d3_notq: std_logic;

signal d4_q: std_logic;
signal d4_notq: std_logic;

signal d5_q: std_logic;
signal d5_notq: std_logic;

signal d6_q: std_logic;
signal d6_notq: std_logic;

signal d7_q: std_logic;
signal d7_notq: std_logic;


signal d8_q: std_logic;
signal d8_notq: std_logic;

signal d9_q: std_logic;
signal d9_notq: std_logic;

signal rs10_q: std_logic;
signal rs10_notq: std_logic;

signal rs11_q: std_logic;
signal rs11_notq: std_logic;

signal rs12_q: std_logic;
signal rs12_notq: std_logic;

signal rs13_q: std_logic;
signal rs13_notq: std_logic;


signal rs14_q: std_logic;
signal rs14_notq: std_logic;

signal rs15_q: std_logic;
signal rs15_notq: std_logic;

signal rs16_q: std_logic;
signal rs16_notq: std_logic;





signal rck_not: std_logic;

signal srload_not: std_logic;
signal srck_not: std_logic;
signal ser: std_logic;
signal not_ser: std_logic;
signal g_not: std_logic;

signal and_1: std_logic;
signal and_2: std_logic;

signal and_3: std_logic;
signal and_4: std_logic;

signal and_5: std_logic;
signal and_6: std_logic;

signal and_7: std_logic;
signal and_8: std_logic;


signal and_9: std_logic;
signal and_10: std_logic;

signal and_11: std_logic;
signal and_12: std_logic;

signal and_13: std_logic;
signal and_14: std_logic;


signal and_15: std_logic;
signal and_16: std_logic;


signal or_1, or_2, or_3, or_4, or_5, or_6, or_7, or_8: std_logic;
signal s1,s2,s3 :std_logic;
signal notA_Q : std_logic_vector(7 downto 0);



begin
rck_not <= not rck;
srload_not <= not srload;
srck_not <= not srck;
g_not <= not g;
notA_Q <= not A_Q;




D1 : jk_trigger
port map(

    NOT_R => '1',
    NOT_S => '1',
    J => A_Q(0),
    K => notA_Q(0),
    CLK => rck_not,
    Q => d1_q,
    NOT_Q => d1_notq
	
);

D2 : jk_trigger
port map(

    NOT_R => '1',
    NOT_S => '1',
    J => A_Q(1),
    K => notA_Q(1),
    CLK => rck_not,
    Q => d2_q,
    NOT_Q => d2_notq
	
);

D3 : jk_trigger
port map(

    NOT_R => '1',
    NOT_S => '1',
    J => A_Q(2),
    K => notA_Q(2),
    CLK => rck_not,
    Q => d3_q,
    NOT_Q => d3_notq
	
);

D4 : jk_trigger
port map(

    NOT_R => '1',
    NOT_S => '1',
    J => A_Q(3),
    K => notA_Q(3),
    CLK => rck_not,
    Q => d4_q,
    NOT_Q => d4_notq
	
);

D5 : jk_trigger
port map(

    NOT_R => '1',
    NOT_S => '1',
    J => A_Q(4),
    K => notA_Q(4),
    CLK => rck_not,
    Q => d5_q,
    NOT_Q => d5_notq
	
);

D6: jk_trigger
port map(

    NOT_R => '1',
    NOT_S => '1',
    J => A_Q(5),
    K => notA_Q(5),
    CLK => rck_not,
    Q => d6_q,
    NOT_Q => d6_notq
	
);

D7: jk_trigger
port map(

    NOT_R => '1',
    NOT_S => '1',
    J => A_Q(6),
    K => notA_Q(6),
    CLK => rck_not,
    Q => d7_q,
    NOT_Q => d7_notq
	
);


D8: jk_trigger
port map(

    NOT_R => '1',
    NOT_S => '1',
    J => A_Q(7),
    K => notA_Q(7),
    CLK => rck_not,
    Q => d8_q,
    NOT_Q => d8_notq
	
);






 and_1 <= not(srload and d1_q);--srload_not
 and_2 <= not(srload and d1_notq);
 
 
  and_3 <= not(srload and d2_q);
  and_4 <= not(srload and d2_notq);
 
 
  and_5 <= not(srload and d3_q);
  and_6 <= not(srload and d3_notq);
  
  and_7 <= not(srload and d4_q);
  and_8 <= not(srload and d4_notq);
  
  and_9 <= not(srload and d5_q);
  and_10 <= not(srload and d5_notq);
  
  
  and_11 <= not(srload and d6_q);
  and_12 <= not(srload and d6_notq);
	
	
  and_13 <= not(srload and d7_q);
  and_14 <= not(srload and d7_notq);
  
  and_15 <= not(srload and d8_q);
  and_16 <= not(srload and d8_notq);
	
  or_1 <= not ((not and_2) or ( srclr));
  
  or_2 <= not ((not and_4) or ( srclr));
  
  or_3 <= not ((not and_6) or ( srclr));
  
  or_4 <= not ((not and_8) or ( srclr));
  
  or_5 <= not ((not and_10) or ( srclr));
  
  or_6 <= not ((not and_12) or ( srclr));
  
  or_7 <= not ((not and_14) or ( srclr));
  
  or_8 <= not ((not and_16) or ( srclr));
  
  ser <= ((not ds)and ser0) or ( ds and ser1);
  not_ser <=  not ser; 
  
  s1<= not((not s3)or not (srcken)); 
  s2 <= (not(s1) and not(srck));
  s3<=not(s2 and srck);
  
 
D9: jk_trigger
port map(
    NOT_R => or_1,
    NOT_S => and_1,
    J => ser,
    K => not_ser,
    CLK => s3,
    Q =>  d9_q,
    NOT_Q => d9_notq
);
 
 

RS10: jk_trigger
port map(
    NOT_R => or_2,
    NOT_S => and_3,
    J => d9_q,
    K => d9_notq,
    CLK => s3,
    Q =>  rs10_q,
    NOT_Q => rs10_notq
);


RS11: jk_trigger
port map(
    NOT_R => or_3,
    NOT_S => and_5,
    J => rs10_q,
    K => rs10_notq,
    CLK => s3,
    Q =>  rs11_q,
    NOT_Q => rs11_notq
);



RS12: jk_trigger
port map(
    NOT_R => or_4,
    NOT_S => and_7,
    J => rs11_q,
    K => rs11_notq,
    CLK => s3,
    Q =>  rs12_q,
    NOT_Q => rs12_notq
);


jk13: jk_trigger
port map(
    NOT_R => or_5,
    NOT_S => and_9,
    J => rs12_q,
    K => rs12_notq,
    CLK => s3,
    Q =>  rs13_q,
    NOT_Q => rs13_notq
);




RS14: jk_trigger
port map(
    NOT_R => or_6,
    NOT_S => and_11,
    J => rs13_q,
    K => rs13_notq,
    CLK => s3,
    Q =>  rs14_q,
    NOT_Q => rs14_notq
);



RS15: jk_trigger
port map(
    NOT_R => or_7,
    NOT_S => and_13,
    J => rs14_q,
    K => rs14_notq,
    CLK => s3,
    Q =>  rs15_q,
    NOT_Q => rs15_notq
);

RS16: jk_trigger
port map(
    NOT_R => or_8,
    NOT_S => and_15,
    J => rs15_q,
    K => rs15_notq,
    CLK => s3,
    Q =>  rs16_q,
    NOT_Q => rs16_notq
);


  A_Q(0) <= 'Z' when g ='0' else d9_q;
  A_Q(1) <= 'Z' when g ='0' else rs10_q;
  A_Q(2) <= 'Z' when g ='0' else rs11_q;
  A_Q(3) <= 'Z' when g ='0' else rs12_q;
  A_Q(4) <= 'Z' when g ='0' else rs13_q;
  A_Q(5) <= 'Z' when g ='0' else rs14_q;
  A_Q(6) <= 'Z' when g ='0' else rs15_q;
  A_Q(7) <= 'Z' when g ='0' else rs16_q;




 Qh <= not rs16_notq;



end Behavioral; 