-- -------------------------------------------------------
-- Debug Scripts, to assist script writing
-- Toggle-able by switch-lever
-- Written by Sephrajin 2019-2022
-- -------------------------------------------------------
-- Description:		Shows "-NAME-ID" for use to generate 
-- Requires:
-- * Script LCD:	Script:CargoGen
-- * Output LCD:	CargoGen
-- * Boxes Src:		BoxCargoGen
-- -------------------------------------------------------
{{~#items E.S 'BoxCargoGen'}}
-{{Name}}-{{Id}}
{{/items}}
 
 -- -------------------------------------------------------
-- Description:		Show content box, scrolling
-- Requires:
-- * Script LCD:	Script:ContentPassTwo
-- * Output LCD:	ContentPassTwo -- 0.5x1
-- -------------------------------------------------------
{{~#scroll 9 1}}
{{~#items E.S 'PassTwo'}}
-{{Name}}-{{Id}}
{{/items}}
{{/scroll}}
 
-- -------------------------------------------------------
-- Description:		Show content of different default ID lists
--					Available: ids.ingots ids.ore
-- Requires:
-- * Switch: 		sw_
-- * Script LCD:	Script:ListIDs
-- * Output LCD:	ListIDs
-- Full list: https://github.com/GitHub-TC/EmpyrionScripting#vordefinierte-id-listen
-- -------------------------------------------------------
Preset ID Lists:
Ore: {{Ids.Ore}}
Ingot: {{Ids.Ingot}}
BlockL: {{Ids.BlockL}}
BlockS: {{Ids.BlockS}}
Medic: {{Ids.Medic}}
Food: {{Ids.Food}}
Ingredient: {{Ids.Ingredient}}
Sprout: {{Ids.Sprout}}
Tools: {{Ids.Tools}}
ArmorMod: {{Ids.ArmorMod}}
-------------
mc-Cash-4344/4347/5995
-- -------------------------------------------------------
-- Description:		Components
-- -------------------------------------------------------
4375,4374,4357,4401,4340,4338,4339,4331,4314,4307,4308,4315,4303,4304,4311,4360,4361,4363,4364,4306,
4310,4312,4343,4313,4305,4330,4309,4334,4337,4366,4367,4350-4356,4378-4381,5097,5108,5706-5708,7298,
7299,7302,7303,7310,7312,7313,7320,7330,7341,4444,4358,4377
-- -------------------------------------------------------
-- Description:		Devices Large List
--					Available: ids.ingots ids.ore
-- -------------------------------------------------------
259,260,263,266,278,291,335,336,414,420,457,468,469,498,558,564,686,714,717,720,724,772,778,781,
835,934,960,962,1002,1008,1016,1034,1035,1095,1112,1120,1131,1136,1253,1257,1278,1304,1315,1321,
1370,1371,1372,1465,1466,1486,1490,1500,1571,1588,1627,1628,1682,1683,1687,1689,1692,1706,1711,
1809,1811,1813,1956,2029,2030,2031,2125,2147,2149,2150,2198,2205,2209,2230,2231,2235,2337,2338,
2339,2340,2341,2342,2444,2446,2448,2449
-- -------------------------------------------------------
-- Description:		Devices Small List
-- -------------------------------------------------------
272,414,418,419,422,423,456,470,471,536,547,548,694,695,696,697,698,712,715,721,1020,1093,1118,
1119,1230,1278,1321,1375,1380,1435,1437,1446,1500,1584,1585,1591,1592,1627,1642,1684,1685,1686,
1688,1693,1712,1800,1810,1956,2026,2027,2028,2124,2126,2148,2151,2152,2203,2204,2232,2233,2336,2445,2447
-- -------------------------------------------------------
-- Description:		Weapons Base
-- -------------------------------------------------------
1648,1649,1650,1651,1673,1773,2154,2159,2164,2169,2254,2424
-- -------------------------------------------------------
-- Description:		Weapons CV, Base
-- -------------------------------------------------------
550,551,552,646,647,1582,1637,1638,1639,1640,1641,1673,2129,2134,2139,2144,2172,2191,2192,
2193,2194,2195,2196,2197,2236,2245,2246,2247,2248,2425,2426,2427,2428,2430,2431,2433,2434,
2435,2436,2437,2438,2497,2498,2499,2500,2501,2502,2503,2504,2513,2516,2517,2518,2533,2534
-- -------------------------------------------------------
-- Description:		Weapons HV
-- -------------------------------------------------------
345,428,429,430,431,432,489,669,683,1236,1659,1660,1662,1663,1876,2178,2184,2187,2190,2239,2335
-- -------------------------------------------------------
-- Description:		Weapons SV
-- -------------------------------------------------------
345,428,429,430,431,432,489,683,852,1659,1661,2174,2175,2181,2187,2188,2189,2199,2200,2239,2251,2420,2421,2422,2423,2432
-- -------------------------------------------------------
-- Description:		Ammo Base
-- -------------------------------------------------------

-- -------------------------------------------------------
-- Description:		Ammo CV, Base
-- -------------------------------------------------------

-- -------------------------------------------------------
-- Description:		Ammo HV
-- -------------------------------------------------------


-- -------------------------------------------------------
-- Description:		Ammo SV
-- -------------------------------------------------------