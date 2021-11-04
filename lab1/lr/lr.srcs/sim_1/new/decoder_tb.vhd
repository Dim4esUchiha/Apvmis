library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity decoder_tb is
end;

architecture bench of decoder_tb is

  component decoder
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
  end component;
  
  signal birbo: STD_LOGIC;
  signal lt: STD_LOGIC;
  signal rbi: STD_LOGIC;
  signal x3: STD_LOGIC;
  signal x2: STD_LOGIC;
  signal x1: STD_LOGIC;
  signal x0: STD_LOGIC;
  signal a: STD_LOGIC;
  signal b: STD_LOGIC;
  signal c: STD_LOGIC;
  signal d: STD_LOGIC;
  signal e: STD_LOGIC;
  signal f: STD_LOGIC;
  signal g: STD_LOGIC;

begin

  uut: decoder port map ( birbo => birbo,
                          lt  => lt,
                          rbi => rbi,
                          x3  => x3,
                          x2  => x2,
                          x1  => x1,
                          x0  => x0,
                          a   => a,
                          b   => b,
                          c   => c,
                          d   => d,
                          e   => e,
                          f   => f,
                          g   => g );

  stimulus: process
  begin
  
  
  
  
  
    for first in std_logic range '0' to '1' loop
        for second in std_logic range '0' to '1' loop
            for third in std_logic range '0' to '1' loop
                for fourth in std_logic range '0' to '1' loop
                    for fifth in std_logic range '0' to '1' loop
                        for sixth in std_logic range '0' to '1' loop
                            for seventh in std_logic range '0' to '1' loop
                                lt<= first;
                                rbi<= second;
                                x3<= third;
                                x2<= fourth;
                                x1<= fifth;
                                x0<= sixth;
                                birbo<= seventh;
                                wait for 10 ns;
                            end loop; 
                        end loop;
                    end loop;
                end loop;
            end loop; 
        end loop;
    end loop;
  
  
  
  
  
  
  
    -- Put initialisation code here
    --0
--        lt<= '1';
--        rbi<= '1';
--        x3<= '0';
--        x2<= '0';
--        x1<= '0';
--        x0<= '0';
--        birbo<= '1';
--        wait for 10 ns;
--     --1
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '0';
--        x1<= '0';
--        x0<= '1';
--        birbo<='1';
--        wait for 10 ns;
--     --2   
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '0';
--        x1<= '1';
--        x0<= '0';
--        birbo<='1';
--        wait for 10 ns;
--      --3
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '0';
--        x1<= '1';
--        x0<= '1';   
--        birbo<='1';     
--        wait for 10 ns;
--        --4 
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '1';
--        x1<= '0';
--        x0<= '0';  
--        birbo<='1';   
--        wait for 10 ns;
--        --5
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '1';
--        x1<= '0';
--        x0<= '1';
--        birbo<='1';
--        wait for 10 ns;
--        --6
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '1';
--        x1<= '1';
--        x0<= '0';
--        birbo<='1';
--        wait for 10 ns;
--        --7
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '1';
--        x1<= '1';
--        x0<= '1';
--        birbo<='1';
--        wait for 10 ns;
--        --8
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '0';
--        x1<= '0';
--        x0<= '0';
--        birbo<='1';
--        wait for 10 ns;
--        --9
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '0';
--        x1<= '0';
--        x0<= '1';
--        birbo<='1';
--        wait for 10 ns;
--        --10
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '0';
--        x1<= '1';
--        x0<= '0';
--        birbo<='1';
--        wait for 10 ns;
--        --11
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '0';
--        x1<= '1';
--        x0<= '1';
--        birbo<='1';
--        wait for 10 ns;
--        --12
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '1';
--        x1<= '0';
--        x0<= '0';
--        birbo<='1';
--        wait for 10 ns;
--        --13
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '1';
--        x1<= '0';
--        x0<= '1';
--        birbo<='1';
--        wait for 10 ns;
--        --14
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '1';
--        x1<= '1';
--        x0<= '0';
--        birbo<='1';
--        wait for 10 ns;
--        --15
--        lt<= '1';
--        rbi<= '0';
--        x3<= '1';
--        x2<= '1';
--        x1<= '1';
--        x0<= '1';
--        birbo<='1';
--        wait for 10 ns;
--        --16
--        birbo<= '0';
--        wait for 10 ns;
--        --17
--        lt<= '1';
--        rbi<= '0';
--        x3<= '0';
--        x2<= '0';
--        x1<= '0';
--        x0<= '0';
--        birbo<= '0';
--        wait for 10 ns;
--        --18
--        lt <= '0';
--        birbo<= '1';
--        wait for 10 ns;
        
    -- Put test bench stimulus code here

    wait;
  end process;


end;