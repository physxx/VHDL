library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.nanoProcesseur_package.all;

entity ROM is
  port(
    pc_i : in     std_logic_vector(7 downto 0);
    ir_o : out    std_logic_vector(13 downto 0));
end entity ROM;

architecture Behavioral of ROM is

begin

with pc_i select
  ir_o <= --début du programme en adresse 0      
          --mnémonique opérande  adresse    
         LOADaddr 	& X"80" when	X"00",  -- Accu = port a
         STOREaddr 	& X"81" when	X"01",  -- port b = Accu
         BRA       	& X"00" when	X"02",  -- saut à 00                    
         BRA		& X"FF" when 	others;    
         
end architecture Behavioral ; -- of ROM
