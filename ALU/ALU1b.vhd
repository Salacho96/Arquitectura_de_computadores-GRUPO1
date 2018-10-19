---------------------------------------------------------------------------------------------------
-- Actividad : ALU 1 BIT
-- Autor : María Camila López
--			  Andres Felipe Salazar
-- 		  David Hernández Cárdenas
-- Fecha : 19/10/18
-- Curso : Arquitectura II
-- Archivo : ALU1b.vhd
---------------------------------------------------------------------------------------------------
-- Descripción : ALU básica ( 1 bit )
---------------------------------------------------------------------------------------------------
-- Cambios : Primera Versión
---------------------------------------------------------------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ALU1b is generic(
	ANCHO:natural:=1;
	ANCHO2:natural:=2
);
port(
ALU_OP: in std_logic_vector(1 downto 0);
A,B: in std_logic;
OUT1: out std_logic_vector(1 downto 0));
end entity;

architecture alusita of ALU1b is
Begin
OUT1 <=  ('0' & A) + B when ALU_OP = "00" else 
			('0' & A) + 1 when ALU_OP = "01" else
			'0' & (A and B) when ALU_OP = "10" else
			'0' & (A xor B) when ALU_OP = "11";
end architecture alusita;

