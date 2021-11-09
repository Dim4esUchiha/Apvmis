library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity decoder_tb is
end;

architecture bench of decoder_tb is

  component decoder
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
  end component;

  signal X3: STD_LOGIC;
  signal X2: STD_LOGIC;
  signal X1: STD_LOGIC;
  signal X0: STD_LOGIC;
  signal LT: STD_LOGIC;
  signal RBI: STD_LOGIC;
  signal A: STD_LOGIC;
  signal B: STD_LOGIC;
  signal C: STD_LOGIC;
  signal D: STD_LOGIC;
  signal E: STD_LOGIC;
  signal F: STD_LOGIC;
  signal G: STD_LOGIC ;

begin

  uut: decoder port map ( X3    => X3,
                          X2    => X2,
                          X1    => X1,
                          X0    => X0,
                          LT    => LT,
                          RBI   => RBI,
                          A     => A,
                          B     => B,
                          C     => C,
                          D     => D,
                          E     => E,
                          F     => F,
                          G     => G );

  stimulus: process
  begin

    for first in std_logic range '0' to '1' loop
        for second in std_logic range '0' to '1' loop
            for third in std_logic range '0' to '1' loop
                for fourth in std_logic range '0' to '1' loop
                    for fifth in std_logic range '0' to '1' loop
                        for sixth in std_logic range '0' to '1' loop
                                lt<= first;
                                rbi<= second;
                                x3<= third;
                                x2<= fourth;
                                x1<= fifth;
                                x0<= sixth;
                                wait for 10 ps; 
                        end loop;
                    end loop;
                end loop;
            end loop; 
        end loop;
    end loop;



--      THIS CASES Below WORK Properly (100%)
--    --0
--        lt<= '1';
--        rbi<= '1';
--        x3<= '0';
--        x2<= '0';
--        x1<= '0';
--        x0<= '0';
--        wait for 10 ns;
--     --1
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '0';
--        x1<= '0';
--        x0<= '1';
--        wait for 10 ns;
--     --2   
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '0';
--        x1<= '1';
--        x0<= '0';
--        wait for 10 ns;
--      --3
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '0';
--        x1<= '1';
--        x0<= '1';     
--        wait for 10 ns;
--        --4 
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '1';
--        x1<= '0';
--        x0<= '0';     
--        wait for 10 ns;
--        --5
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '1';
--        x1<= '0';
--        x0<= '1';
--        wait for 10 ns;
--        --6
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '1';
--        x1<= '1';
--        x0<= '0';
--        wait for 10 ns;
--        --7
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '1';
--        x1<= '1';
--        x0<= '1';
--        wait for 10 ns;
--        --8
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '0';
--        x1<= '0';
--        x0<= '0';
--        wait for 10 ns;
--        --9
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '0';
--        x1<= '0';
--        x0<= '1';
--        wait for 10 ns;
--        --10
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '0';
--        x1<= '1';
--        x0<= '0';
--        wait for 10 ns;
--        --11
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '0';
--        x1<= '1';
--        x0<= '1';
--        wait for 10 ns;
--        --12
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '1';
--        x1<= '0';
--        x0<= '0';
--        wait for 10 ns;
--        --13
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '1';
--        x1<= '0';
--        x0<= '1';
--        wait for 10 ns;
--        --14
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '1';
--        x1<= '1';
--        x0<= '0';
--        wait for 10 ns;
--        --15
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '1';
--        x1<= '1';
--        x0<= '1';
--        wait for 10 ns;
----        --16
----        birbo<= '0';
----        wait for 10 ns;
--        --17
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '0';
--        x1<= '0';
--        x0<= '0';
--        wait for 10 ns;
--        --18
--        lt <= '0';
--        wait for 10 ns;
  end process;
end;