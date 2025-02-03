----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.02.2025 09:46:37
-- Design Name: 
-- Module Name: Assignment_1 - Behavioral
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

entity Assignment_1 is
    Port ( seg : out STD_LOGIC_VECTOR(6 downto 0);
           an : out STD_LOGIC_VECTOR(3 downto 0);
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           anr : in STD_LOGIC_VECTOR (3 downto 0));

end Assignment_1;

architecture Behavioral of Assignment_1 is

    signal int : integer range 0 to 9;
    signal cnt : integer range 0 to 3;
    
begin
    
cnt <= 0 when sw(15) = '1' else 
       1 when sw(14) = '1' else
       2 when sw(13) = '1' else 
       3 when sw(12) = '1' else 
       0;
    
int <= 0 when cnt = 0 else
       1 when cnt = 1 else 
       2 when cnt = 2 else
       3 when cnt = 3 else
       0;
       
an  <= "1110" when cnt = 0 else
       "1101" when cnt = 1 else 
       "1011" when cnt = 2 else
       "0111" when cnt = 3 else
       "1111";


seg <= "0010000" when int = 9 else
       "0000000" when int = 8 else
       "1111000" when int = 7 else
       "0000010" when int = 6 else
       "0010010" when int = 5 else
       "0011001" when int = 4 else
       "0110000" when int = 3 else
       "0100100" when int = 2 else
       "1111001" when int = 1 else
       "1000000" when int = 0 else
         "1111111";


        


end Behavioral;
