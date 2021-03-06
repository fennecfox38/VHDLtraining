library ieee;
use ieee.std_logic_1164.all;

entity Decoder_3_8 is
    port (
        Input  : in std_logic_vector(2 downto 0);
        Output : out std_logic_vector(7 downto 0));
end Decoder_3_8;

architecture Behavior of Decoder_3_8 is
begin
    with Input select
        Output <= "00000001" when "000",
        "00000010" when "001",
        "00000100" when "010",
        "00001000" when "011",
        "00010000" when "100",
        "00100000" when "101",
        "01000000" when "110",
        "10000000" when others;
end Behavior;