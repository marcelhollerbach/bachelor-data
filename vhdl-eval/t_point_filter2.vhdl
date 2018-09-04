library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

architecture t_point_filter2 of test_atom is
	signal exec193 : std_logic := '0';
	signal exec192 : std_logic := '0';
begin

process (clk)
	variable node250 : unsigned(31 downto 0):= (others => '0'); -- PinnedConst Iu[250:61] 
	variable node249 : signed(31 downto 0):= (others => '0'); -- PinnedConst Is[249:60] 
	variable node248 : unsigned(7 downto 0):= (others => '0'); -- PinnedConst Bu[248:59] 
	variable node217 : unsigned(7 downto 0):= (others => '0'); -- Proj Bu[217:35] 
	variable node241 : unsigned(7 downto 0):= (others => '0'); -- And Bu[241:55] 
	variable node232 : signed(7 downto 0):= (others => '0'); -- Conv Is[232:46] 
	variable node237 : signed(8 downto 0):= (others => '0'); -- Add Is[237:51] 
	variable node239 : signed(30 downto 0):= (others => '0'); -- Shr Is[239:53] 
	variable node244 : signed(15 downto 0):= (others => '0'); -- Conv Hs[244:57] 
	variable node251 : unsigned(31 downto 0):= (others => '0'); -- PinnedConst Iu[251:62] 
	variable node202 : unsigned(31 downto 0):= (others => '0'); -- Proj Iu[202:20] 
	variable node204 : unsigned(7 downto 0):= (others => '0'); -- Shr Iu[204:22] 
	variable node205 : unsigned(7 downto 0):= (others => '0'); -- Conv Bu[205:23] 
	variable node243 : signed(15 downto 0):= (others => '0'); -- Conv Hs[243:56] 
	variable node245 : signed(15 downto 0):= (others => '0'); -- Mul Hs[245:58] 
	variable node209 : unsigned(1 downto 0):= (others => '0'); -- Conv Iu[209:27] 
begin
	if rising_edge(clk) then
		if START = '1' then
			exec193 <= '1';
			READY <= '0';
		end if;

		if exec193 = '1' then -- Block BB[193:11]
			exec193 <= '0';
			node250 := to_unsigned(31, 32);	-- PinnedConst Iu[250:61]
			node249 := to_signed(-1, 32);	-- PinnedConst Is[249:60]
			node248 := to_unsigned(3, 8);	-- PinnedConst Bu[248:59]
			node217 := unsigned(CONTROL);	-- Proj Bu[217:35]
			node241 := resize(node217 and node248,8);	-- And Bu[241:55]
			node232 := signed(resize(node241,8));	-- Conv Is[232:46]
			node237 := resize(node232 + node249,9);	-- Add Is[237:51]
			node239 := resize(signed(shift_right(unsigned(node237), 31)),31);	-- Shr Is[239:53]
			node244 := signed(resize(unsigned(node239),16));	-- Conv Hs[244:57]
			node251 := to_unsigned(24, 32);	-- PinnedConst Iu[251:62]
			node202 := unsigned(INPUT0);	-- Proj Iu[202:20]
			node204 := resize((shift_right(unsigned(node202), 24)),8);	-- Shr Iu[204:22]
			node205 := (resize(node204,8));	-- Conv Bu[205:23]
			node243 := signed(resize(node205,16));	-- Conv Hs[243:56]
			node245 := signed(std_logic_vector(resize(unsigned(std_logic_vector(node243 * node244)), 16)));	-- Mul Hs[245:58]
			node209 := unsigned (resize(node245,2));	-- Conv Iu[209:27]
			OUTPUT0 <= std_logic_vector(resize(node209,32));	-- Return X[210:28]
			READY <= '1';
		end if;
	end if;
end process;
end t_point_filter2;
