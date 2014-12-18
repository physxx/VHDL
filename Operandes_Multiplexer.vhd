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
-- Object        : Entity Work.Operandes_Multiplexer
-- Last modified : Tue Jul 08 11:11:56 2014.
--------------------------------------------------------------------------------



library Work, ieee;
use Work.nanoProcesseur_package.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;

entity Operandes_Multiplexer is
  port (
    sel_i   : in     std_logic_vector(2 downto 0);
    Accu_i  : in     std_logic_vector(7 downto 0);
    const_i : in     std_logic_vector(7 downto 0);
    data_i  : in     std_logic_vector(7 downto 0);
    oper1_o : out    std_logic_vector(7 downto 0);
    oper2_o : out    std_logic_vector(7 downto 0));
end entity Operandes_Multiplexer;

--------------------------------------------------------------------------------
-- Object        : Architecture Work.Operandes_Multiplexer.Behavioral
-- Last modified : Tue Jul 08 11:11:56 2014.
--------------------------------------------------------------------------------

architecture Behavioral of Operandes_Multiplexer is


begin

with sel_i select
  oper1_o <= Accu_i  when MUX_ACCU,
             const_i when MUX_CONST,
             data_i  when MUX_DATA,
             Accu_i  when others;
               
with sel_i select
  oper2_o <= const_i when MUX_ACCU_CONST,
             data_i  when MUX_ACCU_DATA,
             Accu_i  when others;
             
	  
end architecture Behavioral ; -- of Operandes_Multiplexer
