--------------------------------------------------------------------------------
--
-- This VHDL file was generated by EASE/HDL 8.0 Revision 2 from HDL Works B.V.
--
-- Ease library  : Work
-- HDL library   : Work
-- Host name     : NE-EIN-128-00
-- User name     : yves.meyer
-- Time stamp    : Tue Dec 02 10:53:15 2014
--
-- Designed by   : 
-- Company       : 
-- Project info  : 
--
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Object        : Entity Work.Data_Multiplexer
-- Last modified : Tue Jul 08 11:41:44 2014.
--------------------------------------------------------------------------------



library Work, ieee;
use Work.nanoProcesseur_package.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;

entity Data_Multiplexer is
  port (
    RAM_data_i    : in     std_logic_vector(7 downto 0);
    port_a_data_i : in     std_logic_vector(7 downto 0);
    port_b_data_i : in     std_logic_vector(7 downto 0);
    data_o        : out    std_logic_vector(7 downto 0);
    cs_ram_i      : in     std_logic;
    cs_port_a_i   : in     std_logic;
    cs_port_b_i   : in     std_logic);
end entity Data_Multiplexer;

--------------------------------------------------------------------------------
-- Object        : Architecture Work.Data_Multiplexer.Behavioral
-- Last modified : Tue Jul 08 11:41:44 2014.
--------------------------------------------------------------------------------

architecture Behavioral of Data_Multiplexer is

  
begin



data_o <= RAM_data_i    when cs_ram_i = '1'    else
          port_a_data_i when cs_port_a_i = '1' else
          port_b_data_i when cs_port_b_i = '1' else
          (others => '-');

	  
end architecture Behavioral ; -- of Data_Multiplexer
