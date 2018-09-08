library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

architecture t_sav of test_atom is
	signal exec193 : std_logic := '0';
	signal exec192 : std_logic := '0';
begin

process (clk)
	variable node298 : unsigned(31 downto 0):= (others => '0'); -- PinnedConst Iu[298:111] 
	variable node297 : unsigned(31 downto 0):= (others => '0'); -- PinnedConst Iu[297:110] 
	variable node248 : unsigned(31 downto 0):= (others => '0'); -- Proj Iu[248:66] 
	variable node253 : unsigned(15 downto 0):= (others => '0'); -- Shr Iu[253:71] 
	variable node254 : signed(15 downto 0):= (others => '0'); -- Conv Hs[254:72] 
	variable node255 : signed(15 downto 0):= (others => '0'); -- Conv Is[255:73] 
	variable node282 : signed(1 downto 0):= (others => '0'); -- Shrs Is[282:98] 
	variable node283 : signed(15 downto 0):= (others => '0'); -- Eor Is[283:99] 
	variable node284 : signed(16 downto 0):= (others => '0'); -- Sub Is[284:100] 
	variable node216 : signed(15 downto 0):= (others => '0'); -- Conv Hs[216:34] 
	variable node217 : signed(15 downto 0):= (others => '0'); -- Conv Is[217:35] 
	variable node249 : signed(15 downto 0):= (others => '0'); -- Conv Hs[249:67] 
	variable node250 : signed(15 downto 0):= (others => '0'); -- Conv Is[250:68] 
	variable node286 : signed(1 downto 0):= (others => '0'); -- Shrs Is[286:101] 
	variable node287 : signed(15 downto 0):= (others => '0'); -- Eor Is[287:102] 
	variable node288 : signed(16 downto 0):= (others => '0'); -- Sub Is[288:103] 
	variable node212 : signed(15 downto 0):= (others => '0'); -- Conv Hs[212:30] 
	variable node213 : signed(15 downto 0):= (others => '0'); -- Conv Is[213:31] 
	variable node229 : unsigned(31 downto 0):= (others => '0'); -- Proj Iu[229:47] 
	variable node239 : unsigned(15 downto 0):= (others => '0'); -- Shr Iu[239:57] 
	variable node240 : signed(15 downto 0):= (others => '0'); -- Conv Hs[240:58] 
	variable node241 : signed(15 downto 0):= (others => '0'); -- Conv Is[241:59] 
	variable node290 : signed(1 downto 0):= (others => '0'); -- Shrs Is[290:104] 
	variable node291 : signed(15 downto 0):= (others => '0'); -- Eor Is[291:105] 
	variable node292 : signed(16 downto 0):= (others => '0'); -- Sub Is[292:106] 
	variable node207 : signed(15 downto 0):= (others => '0'); -- Conv Hs[207:25] 
	variable node208 : signed(15 downto 0):= (others => '0'); -- Conv Is[208:26] 
	variable node230 : signed(15 downto 0):= (others => '0'); -- Conv Hs[230:48] 
	variable node231 : signed(15 downto 0):= (others => '0'); -- Conv Is[231:49] 
	variable node294 : signed(1 downto 0):= (others => '0'); -- Shrs Is[294:107] 
	variable node295 : signed(15 downto 0):= (others => '0'); -- Eor Is[295:108] 
	variable node296 : signed(16 downto 0):= (others => '0'); -- Sub Is[296:109] 
	variable node203 : signed(15 downto 0):= (others => '0'); -- Conv Hs[203:21] 
	variable node204 : signed(15 downto 0):= (others => '0'); -- Conv Is[204:22] 
	variable node209 : signed(16 downto 0):= (others => '0'); -- Add Is[209:27] 
	variable node214 : signed(17 downto 0):= (others => '0'); -- Add Is[214:32] 
	variable node218 : signed(18 downto 0):= (others => '0'); -- Add Is[218:36] 
	variable node219 : unsigned(31 downto 0):= (others => '0'); -- Conv Iu[219:37] 
begin
	if rising_edge(clk) then
		if START = '1' then
			exec193 <= '1';
			READY <= '0';
		end if;

		if exec193 = '1' then -- Block BB[193:11]
			exec193 <= '0';
			node298 := to_unsigned(31, 32);	-- PinnedConst Iu[298:111]
			node297 := to_unsigned(16, 32);	-- PinnedConst Iu[297:110]
			node248 := unsigned(INPUT1);	-- Proj Iu[248:66]
			node253 := resize((shift_right(unsigned(resize(node248,32)), 16)),16);	-- Shr Iu[253:71]
			node254 := resize(signed(resize(resize(node253,32),16)),16);	-- Conv Hs[254:72]
			node255 := resize((resize(resize(node254,16),32)),16);	-- Conv Is[255:73]
			node282 := resize((shift_right(signed(resize(node255,32)),31)), 2);	-- Shrs Is[282:98]
			node283 := resize(node255,16) xor resize(node282,16);	-- Eor Is[283:99]
			node284 := resize(node283,17) - resize(node282,17);	-- Sub Is[284:100]
			node216 := resize(signed(resize(unsigned(resize(node284,32)),16)), 16);	-- Conv Hs[216:34]
			node217 := resize((resize(resize(node216,16),32)),16);	-- Conv Is[217:35]
			node249 := resize(signed(resize(resize(node248,32),16)),16);	-- Conv Hs[249:67]
			node250 := resize((resize(resize(node249,16),32)),16);	-- Conv Is[250:68]
			node286 := resize((shift_right(signed(resize(node250,32)),31)), 2);	-- Shrs Is[286:101]
			node287 := resize(node250,16) xor resize(node286,16);	-- Eor Is[287:102]
			node288 := resize(node287,17) - resize(node286,17);	-- Sub Is[288:103]
			node212 := resize(signed(resize(unsigned(resize(node288,32)),16)), 16);	-- Conv Hs[212:30]
			node213 := resize((resize(resize(node212,16),32)),16);	-- Conv Is[213:31]
			node229 := unsigned(INPUT0);	-- Proj Iu[229:47]
			node239 := resize((shift_right(unsigned(resize(node229,32)), 16)),16);	-- Shr Iu[239:57]
			node240 := resize(signed(resize(resize(node239,32),16)),16);	-- Conv Hs[240:58]
			node241 := resize((resize(resize(node240,16),32)),16);	-- Conv Is[241:59]
			node290 := resize((shift_right(signed(resize(node241,32)),31)), 2);	-- Shrs Is[290:104]
			node291 := resize(node241,16) xor resize(node290,16);	-- Eor Is[291:105]
			node292 := resize(node291,17) - resize(node290,17);	-- Sub Is[292:106]
			node207 := resize(signed(resize(unsigned(resize(node292,32)),16)), 16);	-- Conv Hs[207:25]
			node208 := resize((resize(resize(node207,16),32)),16);	-- Conv Is[208:26]
			node230 := resize(signed(resize(resize(node229,32),16)),16);	-- Conv Hs[230:48]
			node231 := resize((resize(resize(node230,16),32)),16);	-- Conv Is[231:49]
			node294 := resize((shift_right(signed(resize(node231,32)),31)), 2);	-- Shrs Is[294:107]
			node295 := resize(node231,16) xor resize(node294,16);	-- Eor Is[295:108]
			node296 := resize(node295,17) - resize(node294,17);	-- Sub Is[296:109]
			node203 := resize(signed(resize(unsigned(resize(node296,32)),16)), 16);	-- Conv Hs[203:21]
			node204 := resize((resize(resize(node203,16),32)),16);	-- Conv Is[204:22]
			node209 := resize(node204,17) + resize(node208,17);	-- Add Is[209:27]
			node214 := resize(node209,18) + resize(node213,18);	-- Add Is[214:32]
			node218 := resize(node214,19) + resize(node217,19);	-- Add Is[218:36]
			node219 := resize((resize(unsigned(resize(node218,32)),32)), 32);	-- Conv Iu[219:37]
			OUTPUT0 <= std_logic_vector(resize(node219,32));	-- Return X[220:38]
			READY <= '1';
		end if;
	end if;
end process;
end t_sav;
