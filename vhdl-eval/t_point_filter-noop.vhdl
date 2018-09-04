library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

architecture t_point_filter-noop of test_atom is
	signal exec193 : std_logic := '0';
	signal exec192 : std_logic := '0';
begin

process (clk)
	variable node231 : unsigned(31 downto 0):= (others => '0'); -- Proj Iu[231:49] 
	variable node253 : unsigned(1 downto 0):= (others => '0'); -- Conv Bu[253:71] 
	variable node366 : signed(15 downto 0):= (others => '0'); -- Conv Hs[366:164] 
	variable node383 : unsigned(7 downto 0):= (others => '0'); -- PinnedConst Bu[383:170] 
	variable node382 : unsigned(7 downto 0):= (others => '0'); -- PinnedConst Bu[382:169] 
	variable node381 : unsigned(7 downto 0):= (others => '0'); -- PinnedConst Bu[381:168] 
	variable node278 : unsigned(7 downto 0):= (others => '0'); -- Proj Bu[278:96] 
	variable node348 : unsigned(7 downto 0):= (others => '0'); -- And Bu[348:153] 
	variable node316 : boolean;	-- Cmp greater[316:132] 
	variable node313 : boolean;	-- Cmp less_greater[313:129] 
	variable node318 : boolean;	-- And b[318:134] 
	variable node319 : unsigned(7 downto 0):= (others => '0'); -- Mux Bu[319:135] 
	variable node365 : signed(15 downto 0):= (others => '0'); -- Conv Hs[365:163] 
	variable node367 : signed(15 downto 0):= (others => '0'); -- Mul Hs[367:165] 
	variable node386 : unsigned(31 downto 0):= (others => '0'); -- PinnedConst Iu[386:171] 
	variable node246 : unsigned(23 downto 0):= (others => '0'); -- Shr Iu[246:64] 
	variable node247 : unsigned(1 downto 0):= (others => '0'); -- Conv Bu[247:65] 
	variable node362 : signed(15 downto 0):= (others => '0'); -- Conv Hs[362:160] 
	variable node388 : unsigned(7 downto 0):= (others => '0'); -- PinnedConst Bu[388:172] 
	variable node291 : boolean;	-- Cmp equal[291:109] 
	variable node302 : unsigned(7 downto 0):= (others => '0'); -- Mux Bu[302:118] 
	variable node321 : unsigned(7 downto 0):= (others => '0'); -- Mux Bu[321:136] 
	variable node361 : signed(15 downto 0):= (others => '0'); -- Conv Hs[361:159] 
	variable node363 : signed(15 downto 0):= (others => '0'); -- Mul Hs[363:161] 
	variable node391 : unsigned(31 downto 0):= (others => '0'); -- PinnedConst Iu[391:173] 
	variable node239 : unsigned(15 downto 0):= (others => '0'); -- Shr Iu[239:57] 
	variable node240 : unsigned(1 downto 0):= (others => '0'); -- Conv Bu[240:58] 
	variable node358 : signed(15 downto 0):= (others => '0'); -- Conv Hs[358:156] 
	variable node392 : unsigned(7 downto 0):= (others => '0'); -- PinnedConst Bu[392:174] 
	variable node301 : unsigned(7 downto 0):= (others => '0'); -- Mux Bu[301:117] 
	variable node323 : unsigned(7 downto 0):= (others => '0'); -- Mux Bu[323:137] 
	variable node357 : signed(15 downto 0):= (others => '0'); -- Conv Hs[357:155] 
	variable node359 : signed(15 downto 0):= (others => '0'); -- Mul Hs[359:157] 
	variable node397 : signed(31 downto 0):= (others => '0'); -- PinnedConst Is[397:176] 
	variable node396 : signed(31 downto 0):= (others => '0'); -- PinnedConst Is[396:175] 
	variable node283 : boolean;	-- Cmp equal[283:101] 
	variable node308 : signed(31 downto 0):= (others => '0'); -- Mux Is[308:124] 
	variable node398 : unsigned(31 downto 0):= (others => '0'); -- PinnedConst Iu[398:177] 
	variable node232 : unsigned(7 downto 0):= (others => '0'); -- Shr Iu[232:50] 
	variable node233 : unsigned(7 downto 0):= (others => '0'); -- Conv Bu[233:51] 
	variable node234 : signed(7 downto 0):= (others => '0'); -- Conv Is[234:52] 
	variable node235 : signed(31 downto 0):= (others => '0'); -- Mul Is[235:53] 
	variable node371 : signed(31 downto 0):= (others => '0'); -- Mux Is[371:167] 
	variable node202 : unsigned(31 downto 0):= (others => '0'); -- Proj Iu[202:20] 
	variable node226 : unsigned(1 downto 0):= (others => '0'); -- Conv Bu[226:44] 
	variable node227 : signed(1 downto 0):= (others => '0'); -- Conv Is[227:45] 
	variable node228 : signed(7 downto 0):= (others => '0'); -- Mul Is[228:46] 
	variable node219 : unsigned(23 downto 0):= (others => '0'); -- Shr Iu[219:37] 
	variable node220 : unsigned(1 downto 0):= (others => '0'); -- Conv Bu[220:38] 
	variable node221 : signed(1 downto 0):= (others => '0'); -- Conv Is[221:39] 
	variable node299 : unsigned(7 downto 0):= (others => '0'); -- Mux Bu[299:115] 
	variable node332 : unsigned(7 downto 0):= (others => '0'); -- Mux Bu[332:142] 
	variable node217 : signed(7 downto 0):= (others => '0'); -- Conv Is[217:35] 
	variable node222 : signed(7 downto 0):= (others => '0'); -- Mul Is[222:40] 
	variable node211 : unsigned(15 downto 0):= (others => '0'); -- Shr Iu[211:29] 
	variable node212 : unsigned(1 downto 0):= (others => '0'); -- Conv Bu[212:30] 
	variable node213 : signed(1 downto 0):= (others => '0'); -- Conv Is[213:31] 
	variable node298 : unsigned(7 downto 0):= (others => '0'); -- Mux Bu[298:114] 
	variable node334 : unsigned(7 downto 0):= (others => '0'); -- Mux Bu[334:143] 
	variable node209 : signed(7 downto 0):= (others => '0'); -- Conv Is[209:27] 
	variable node214 : signed(7 downto 0):= (others => '0'); -- Mul Is[214:32] 
	variable node410 : unsigned(31 downto 0):= (others => '0'); -- PinnedConst Iu[410:179] 
	variable node409 : signed(31 downto 0):= (others => '0'); -- PinnedConst Is[409:178] 
	variable node337 : signed(7 downto 0):= (others => '0'); -- Conv Is[337:144] 
	variable node342 : signed(8 downto 0):= (others => '0'); -- Add Is[342:149] 
	variable node344 : signed(30 downto 0):= (others => '0'); -- Shr Is[344:151] 
	variable node204 : unsigned(7 downto 0):= (others => '0'); -- Shr Iu[204:22] 
	variable node205 : unsigned(7 downto 0):= (others => '0'); -- Conv Bu[205:23] 
	variable node206 : signed(7 downto 0):= (others => '0'); -- Conv Is[206:24] 
	variable node207 : signed(31 downto 0):= (others => '0'); -- Mul Is[207:25] 
	variable node215 : signed(31 downto 0):= (others => '0'); -- Add Is[215:33] 
	variable node223 : signed(31 downto 0):= (others => '0'); -- Add Is[223:41] 
	variable node229 : signed(31 downto 0):= (others => '0'); -- Add Is[229:47] 
	variable node236 : signed(31 downto 0):= (others => '0'); -- Add Is[236:54] 
	variable node356 : signed(15 downto 0):= (others => '0'); -- Conv Hs[356:154] 
	variable node360 : signed(15 downto 0):= (others => '0'); -- Add Hs[360:158] 
	variable node364 : signed(15 downto 0):= (others => '0'); -- Add Hs[364:162] 
	variable node368 : signed(15 downto 0):= (others => '0'); -- Add Hs[368:166] 
	variable node258 : unsigned(31 downto 0):= (others => '0'); -- Conv Iu[258:76] 
begin
	if rising_edge(clk) then
		if START = '1' then
			exec193 <= '1';
			READY <= '0';
		end if;

		if exec193 = '1' then -- Block BB[193:11]
			exec193 <= '0';
			node231 := unsigned(INPUT1);	-- Proj Iu[231:49]
			node253 := (resize(node231,2));	-- Conv Bu[253:71]
			node366 := signed(resize(node253,16));	-- Conv Hs[366:164]
			node383 := to_unsigned(1, 8);	-- PinnedConst Bu[383:170]
			node382 := to_unsigned(0, 8);	-- PinnedConst Bu[382:169]
			node381 := to_unsigned(3, 8);	-- PinnedConst Bu[381:168]
			node278 := unsigned(CONTROL);	-- Proj Bu[278:96]
			node348 := resize(node278 and node381,8);	-- And Bu[348:153]
			node316 := node348 > node382;	-- Cmp greater[316:132]
			node313 := node348 /= node383;	-- Cmp less_greater[313:129]
			node318 := node313 and node316;	-- And b[318:134]
			if node318 then node319 := resize(node383,8); else node319 := resize(node382,8); end if;	-- Mux Bu[319:135]
			node365 := signed(resize(node319,16));	-- Conv Hs[365:163]
			node367 := signed(std_logic_vector(resize(unsigned(std_logic_vector(node365 * node366)), 16)));	-- Mul Hs[367:165]
			node386 := to_unsigned(8, 32);	-- PinnedConst Iu[386:171]
			node246 := resize((shift_right(unsigned(node231), 8)),24);	-- Shr Iu[246:64]
			node247 := (resize(node246,2));	-- Conv Bu[247:65]
			node362 := signed(resize(node247,16));	-- Conv Hs[362:160]
			node388 := to_unsigned(251, 8);	-- PinnedConst Bu[388:172]
			node291 := node348 = node383;	-- Cmp equal[291:109]
			if node291 then node302 := resize(node383,8); else node302 := resize(node388,8); end if;	-- Mux Bu[302:118]
			if node316 then node321 := resize(node302,8); else node321 := resize(node382,8); end if;	-- Mux Bu[321:136]
			node361 := signed(resize(node321,16));	-- Conv Hs[361:159]
			node363 := signed(std_logic_vector(resize(unsigned(std_logic_vector(node361 * node362)), 16)));	-- Mul Hs[363:161]
			node391 := to_unsigned(16, 32);	-- PinnedConst Iu[391:173]
			node239 := resize((shift_right(unsigned(node231), 16)),16);	-- Shr Iu[239:57]
			node240 := (resize(node239,2));	-- Conv Bu[240:58]
			node358 := signed(resize(node240,16));	-- Conv Hs[358:156]
			node392 := to_unsigned(20, 8);	-- PinnedConst Bu[392:174]
			if node291 then node301 := resize(node388,8); else node301 := resize(node392,8); end if;	-- Mux Bu[301:117]
			if node316 then node323 := resize(node301,8); else node323 := resize(node383,8); end if;	-- Mux Bu[323:137]
			node357 := signed(resize(node323,16));	-- Conv Hs[357:155]
			node359 := signed(std_logic_vector(resize(unsigned(std_logic_vector(node357 * node358)), 16)));	-- Mul Hs[359:157]
			node397 := to_signed(251, 32);	-- PinnedConst Is[397:176]
			node396 := to_signed(20, 32);	-- PinnedConst Is[396:175]
			node283 := node348 = node382;	-- Cmp equal[283:101]
			if node283 then node308 := resize(node397,32); else node308 := resize(node396,32); end if;	-- Mux Is[308:124]
			node398 := to_unsigned(24, 32);	-- PinnedConst Iu[398:177]
			node232 := resize((shift_right(unsigned(node231), 24)),8);	-- Shr Iu[232:50]
			node233 := (resize(node232,8));	-- Conv Bu[233:51]
			node234 := signed(resize(node233,8));	-- Conv Is[234:52]
			node235 := signed(std_logic_vector(resize(unsigned(std_logic_vector(node234 * node308)), 32)));	-- Mul Is[235:53]
			if node318 then node371 := resize(node397,32); else node371 := resize(node396,32); end if;	-- Mux Is[371:167]
			node202 := unsigned(INPUT0);	-- Proj Iu[202:20]
			node226 := (resize(node202,2));	-- Conv Bu[226:44]
			node227 := signed(resize(node226,2));	-- Conv Is[227:45]
			node228 := signed(std_logic_vector(resize(unsigned(std_logic_vector(node227 * node371)), 8)));	-- Mul Is[228:46]
			node219 := resize((shift_right(unsigned(node202), 8)),24);	-- Shr Iu[219:37]
			node220 := (resize(node219,2));	-- Conv Bu[220:38]
			node221 := signed(resize(node220,2));	-- Conv Is[221:39]
			if node291 then node299 := resize(node388,8); else node299 := resize(node383,8); end if;	-- Mux Bu[299:115]
			if node316 then node332 := resize(node299,8); else node332 := resize(node392,8); end if;	-- Mux Bu[332:142]
			node217 := signed(resize(node332,8));	-- Conv Is[217:35]
			node222 := signed(std_logic_vector(resize(unsigned(std_logic_vector(node217 * node221)), 8)));	-- Mul Is[222:40]
			node211 := resize((shift_right(unsigned(node202), 16)),16);	-- Shr Iu[211:29]
			node212 := (resize(node211,2));	-- Conv Bu[212:30]
			node213 := signed(resize(node212,2));	-- Conv Is[213:31]
			if node291 then node298 := resize(node383,8); else node298 := resize(node382,8); end if;	-- Mux Bu[298:114]
			if node316 then node334 := resize(node298,8); else node334 := resize(node388,8); end if;	-- Mux Bu[334:143]
			node209 := signed(resize(node334,8));	-- Conv Is[209:27]
			node214 := signed(std_logic_vector(resize(unsigned(std_logic_vector(node209 * node213)), 8)));	-- Mul Is[214:32]
			node410 := to_unsigned(31, 32);	-- PinnedConst Iu[410:179]
			node409 := to_signed(-1, 32);	-- PinnedConst Is[409:178]
			node337 := signed(resize(node348,8));	-- Conv Is[337:144]
			node342 := resize(node337 + node409,9);	-- Add Is[342:149]
			node344 := resize(signed(shift_right(unsigned(node342), 31)),31);	-- Shr Is[344:151]
			node204 := resize((shift_right(unsigned(node202), 24)),8);	-- Shr Iu[204:22]
			node205 := (resize(node204,8));	-- Conv Bu[205:23]
			node206 := signed(resize(node205,8));	-- Conv Is[206:24]
			node207 := signed(std_logic_vector(resize(unsigned(std_logic_vector(node206 * node344)), 32)));	-- Mul Is[207:25]
			node215 := resize(node207 + node214,32);	-- Add Is[215:33]
			node223 := resize(node215 + node222,32);	-- Add Is[223:41]
			node229 := resize(node223 + node228,32);	-- Add Is[229:47]
			node236 := resize(node229 + node235,32);	-- Add Is[236:54]
			node356 := signed(resize(unsigned(node236),16));	-- Conv Hs[356:154]
			node360 := resize(node356 + node359,16);	-- Add Hs[360:158]
			node364 := resize(node360 + node363,16);	-- Add Hs[364:162]
			node368 := resize(node364 + node367,16);	-- Add Hs[368:166]
			node258 := unsigned (resize(node368,32));	-- Conv Iu[258:76]
			OUTPUT0 <= std_logic_vector(resize(node258,32));	-- Return X[259:77]
			READY <= '1';
		end if;
	end if;
end process;
end t_point_filter-noop;
