-- *******************************************************
-- * Nome: Leandro César Carneiro                         
-- * RU: 1809153                                         
-- * Descrição: Implementação do circuito em VHDL para FPGA 
-- *******************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CircuitoFPGA is
    Port (
        A, B, C : in STD_LOGIC;
        LED1, LED2, LED3, LED4 : out STD_LOGIC
    );
end CircuitoFPGA;

architecture Behavioral of CircuitoFPGA is
begin
    LED1 <= not A or not B or not C;
    LED2 <= (not A) and (not B or C);
    LED3 <= (A or B) and (B or not C) and (not A or not B);
    LED4 <= (C and not A) or (not B and not C);
end Behavioral;