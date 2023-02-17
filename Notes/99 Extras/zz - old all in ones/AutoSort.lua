-- -------------------------------------------------------
-- Moves all items from a docked vessel within a box named Cargo*, Loot* or Stuff* to the Root having a container "Drop Box"
-- Toggle-able by switch-lever
-- Written by Sephrajin 2019-2022
-- -------------------------------------------------------
-- Description:		This switch toggles wether auto sort is enabled on this CV/BA, and if docked vessels are scanned for cargo boxes to move items from.
-- Requires:
-- * Switch: 		sw_AutoSort
-- * Script LCD:	Script:AutoSort
-- * Output LCD:	AutoSort
-- * Boxes Src:		Cargo*, Loot*, Stuff*
-- * Boxes Trgt:	Drop Box
-- -------------------------------------------------------
<pos=8>◜</pos><pos=180>◝</pos>
<align=center><i><size=150%><color=white><u></color>AutoMove Cargo</u></size></i>
</align><pos=8>◟</pos><pos=180>◞</pos>
{{#getswitch @root.E.S 'sw_AutoMove'}}
{{#if SwitchState}}

<indent=10><color=green>Scanning for boxes starting with 'Loot', 'Cargo' or 'Stuff' in docked vessels to be moved to local structure ('Drop Box').</color></indent>
 
 
 
 
Scanning:
{{scroll 5 1}}
{{~#each @root.E.S.DockedE}}
<indent=6>◉ <color=grey>{{Name}}</color></indent>
{{/items}}
{{/each}}
{{/scroll}}
{{else}}
 
<color=red>Switch this lever to automaticly move loot from your docked vessels to this structure (Container: 'Loot', 'Cargo' or 'Stuff').</color>
 
{{/if}}{{/getswitch}}

-- -------------------------------------------------------
-- Description:		Moves items from vessel containers to BA or CV. (Does NOT work from CV to BA!!)
-- Requires:
-- * Switch: 		sw_AutoSort (Signal Power: Follow)
-- * Script LCD:	Script:[+12]AutoMove
-- * Output LCD:	AutoMove
-- * Boxes Src:		Cargo*, Loot*, Stuff*
-- * Boxes Trgt:	Drop Box
-- -------------------------------------------------------
{{~#each @root.E.S.DockedE}}
{{#items S 'Loot*;Cargo*;Stuff*'}}
{{~set 'Itemname' Name}}
{{~#move this @root.E.S 'Drop Box'}}
 {{datetime 'HH:mm:ss'}} | <color=orange>Move</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| <color=green>❰</color> {{SourceE.Name}}</pos>
{{/move}}
{{/items}}
{{/each}}

-- -------------------------------------------------------
-- Description:		Actual sort/move modified, provided by OnlyJens83
-- Requires:
-- * Switch: 		sw_AutoSort
-- * LCD:			CultureInfo    -- Dont forget to edit your language in there!
-- * LCD:			Language (contains language you want to use)
-- * Script LCD:	Script:AutoSortLabel
-- * Output LCD:	<x>-<Name>-<ID>y
-- * Boxes:			<x>-<Name>-<ID>		<x>-<Name>-<ID>/<x>-<Name>-<ID>/<x>-<Name>-<ID>....
-- * Info:			<x> can be any identifier (must be identical for Box&LCD
--					<Name> can be any name you want
--					<ID> is the script id of an item, you can add multiple IDs by seperating with a /
--					The LCD needs a "y" at the end
-- * Switches:		sw_AutoMove
--					sw_Enable_AS_b
--					sw_Enable_AS_d
--					sw_Enable_AS_v
--					sw_Enable_AS_wl
--					sw_Enable_AS_ws
--					
-- -------------------------------------------------------
-- PART -- Ingots & Ore
-- i-Iron-4320
-- i-Silicon-4322
-- i-Copper-4324
-- i-Cobalt-4321
-- i-Neodynium-4323
-- i-Sathium-4333
-- i-Erestrum-4326
-- i-Zascosium-4327
-- i-Stone-4328/4329
-- i-Titan-4360
-- i-Platinum-4366
-- i-Stone-4328/4329
-- EDEN
-- i-MagmaThung-7301/7343
-- PART 2 -- Ores --------------------------------------------------------
-- o-Iron Ore-4297
-- o-Silicon Ore-4299
-- o-Copper Ore-4301
-- o-Cobalt Ore-4298
-- o-Neodymium Ore-4300
-- o-Sathium Ore-4332
-- o-Erestrum Ore-4317
-- o-Zascosium Ore-4318
-- o-Gold Ore-4345
-- o-Titanium Ore-4359
-- o-Aluminum Ore-4362
-- o-Platinum Ore-4365
-- Eden
-- o-DeconOre1-7342/7344    -- Silver & Thungsten Ores -- TODO pulver
-- o-DeOr2-7300/7332/7334/7336
-- o-DeOr3-7338/7358/7359/7360
-- o-DeOr4-7361/7362
{{~#items E.S 'Drop Box'}}
{{~#devices @root.E.S 'i-*'}}
{{~#each .}} 
{{~#split CustomName '-'}}
{{~#test Length eq '3'}}
{{~#split .2 '/'}}
{{set 'Ids' (concat . ',')}}
{{/split}}
{{~#test ../../../../Id 'in' @IDs.Ingot}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n Id}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/split}}
{{/each}}
{{/devices}}
{{~#devices @root.E.S 'o-*'}}
{{~#each .}} 
{{~#split CustomName '-'}}
{{~#test Length eq '3'}}
{{~#split .2 '/'}}
{{set 'Ids' (concat . ',')}}
{{/split}}
{{~#test ../../../../Id 'in' @IDs.Ore}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n key}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/split}}
{{/each}}
{{/devices}}
{{/items}}
{{setswitch @root.E.S 'sw_Enable_AS_v' 'True'}}
{{/setswitch}}
{{setswitch @root.E.S 'sw_AutoMove' 'False'}}
{{/setswitch}}

-- PART Vary Items --------------------------------------------------------
-- v-Magnesium-4296/4319
-- v-Pentaxid-4341/4342
-- v-Water-4444
-- v-Promethium-4302
-- v-Wood-4338/4339
-- v-PromPellets-4325
-- v-Ice-4358
-- v-Ice2-7350/7351/7352/7353
-- v-Ice3-7354/7355/7356/7363
-- v-WepV-
-- v-WepE-
{{~#items E.S 'Drop Box'}}
{{~#devices @root.E.S 'v-*'}}
{{~#each .}} 
{{~#split CustomName '-'}}
{{~#test Length eq '3'}}
{{~#split .2 '/'}}
{{set 'Ids' (concat . ',')}}
{{/split}}
{{~#test ../../../../Id 'in' @root.Data.Ids}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n Id}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/split}}
{{/each}}
{{/devices}}
{{/items}}
{{setswitch @root.E.S 'sw_Enable_AS_d' 'True'}}
{{/setswitch}}
{{setswitch @root.E.S 'sw_Enable_AS_v' 'False'}}
{{/setswitch}}

-- PART DEVICES ---------------------------------------
-- dl-DeviceLarge-1234
-- ds-DeviceSmall-1234
{{~#items E.S 'Drop Box'}}
{{~#devices @root.E.S 'dl-*'}}
{{~#each .}} 
{{~#split CustomName '-'}}
{{~#test Length eq '3'}}
{{~#split .2 '/'}}
{{set 'Ids' (concat . ',')}}
{{/split}}
{{~#test ../../../../Id 'in' '259,260,263,266,278,291,335,336,414,420,457,468,469,498,558,564,686,714,717,720,724,772,778,781,835,934,960,962,1002,1008,1016,1034,1035,1095,1112,1120,1131,1136,1253,1257,1278,1304,1315,1321,1370,1371,1372,1465,1466,1486,1490,1500,1571,1588,1627,1628,1682,1683,1687,1689,1692,1706,1711,1809,1811,1813,1956,2029,2030,2031,2125,2147,2149,2150,2198,2205,2209,2230,2231,2235,2337,2338,2339,2340,2341,2342,2444,2446,2448,2449'}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n Id}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/split}}
{{/each}}
{{/devices}}
{{~#devices @root.E.S 'ds-*'}}
{{~#each .}} 
{{~#split CustomName '-'}}
{{~#test Length eq '3'}}
{{~#split .2 '/'}}
{{set 'Ids' (concat . ',')}}
{{/split}}
{{~#test ../../../../Id 'in' '272,414,418,419,422,423,456,470,471,536,547,548,694,695,696,697,698,712,715,721,1020,1093,1118,1119,1230,1278,1321,1375,1380,1435,1437,1446,1500,1584,1585,1591,1592,1627,1642,1684,1685,1686,1688,1693,1712,1800,1810,1956,2026,2027,2028,2124,2126,2148,2151,2152,2203,2204,2232,2233,2336,2445,2447'}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n key}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/split}}
{{/each}}
{{/devices}}
{{/items}}
{{setswitch @root.E.S 'sw_Enable_AS_wl' 'True'}}
{{/setswitch}}
{{setswitch @root.E.S 'sw_Enable_AS_d' 'False'}}
{{/setswitch}}

-- Part Weapons Large -----------------
-- sw_Enable_AS_wl
-- Script:[+3]AutoSortLabel_wl
-- wl-BA-1234
-- wl-CV-1234
{{~#items E.S 'Drop Box'}}
{{~#devices @root.E.S 'wl-B*'}}
{{~#each .}} 
{{~#split CustomName '-'}}
{{~#test Length eq '3'}}
{{~#split .2 '/'}}
{{set 'Ids' (concat . ',')}}
{{/split}}
{{~#test ../../../../Id 'in' '1648,1649,1650,1651,1673,1773,2154,2159,2164,2169,2254,2424'}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n Id}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/split}}
{{/each}}
{{/devices}}
{{~#devices @root.E.S 'wl-C*'}}
{{~#each .}} 
{{~#split CustomName '-'}}
{{~#test Length eq '3'}}
{{~#split .2 '/'}}
{{set 'Ids' (concat . ',')}}
{{/split}}
{{~#test ../../../../Id 'in' '550,551,552,646,647,1582,1637,1638,1639,1640,1641,1673,2129,2134,2139,2144,2172,2191,2192,2193,2194,2195,2196,2197,2236,2245,2246,2247,2248,2425,2426,2427,2428,2430,2431,2433,2434,2435,2436,2437,2438,2497,2498,2499,2500,2501,2502,2503,2504,2513,2516,2517,2518,2533,2534'}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n key}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/split}}
{{/each}}
{{/devices}}
{{/items}}
{{setswitch @root.E.S 'sw_Enable_AS_ws' 'True'}}
{{/setswitch}}
{{setswitch @root.E.S 'sw_Enable_AS_wl' 'False'}}
{{/setswitch}}

-- Part Weapons Small -----------------
-- ws-HV-1234
-- ws-SV-1234
{{~#items E.S 'Drop Box'}}
{{~#devices @root.E.S 'ws-H*'}}
{{~#each .}} 
{{~#split CustomName '-'}}
{{~#test Length eq '3'}}
{{~#split .2 '/'}}
{{set 'Ids' (concat . ',')}}
{{/split}}
{{~#test ../../../../Id 'in' '345,428,429,430,431,432,489,669,683,1236,1659,1660,1662,1663,1876,2178,2184,2187,2190,2239,2335'}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n Id}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/split}}
{{/each}}
{{/devices}}
{{~#devices @root.E.S 'ws-S*'}}
{{~#each .}} 
{{~#split CustomName '-'}}
{{~#test Length eq '3'}}
{{~#split .2 '/'}}
{{set 'Ids' (concat . ',')}}
{{/split}}
{{~#test ../../../../Id 'in' '345,428,429,430,431,432,489,683,852,1659,1661,2174,2175,2181,2187,2188,2189,2199,2200,2239,2251,2420,2421,2422,2423,2432'}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n key}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/split}}
{{/each}}
{{/devices}}
{{/items}}
{{setswitch @root.E.S 'sw_Enable_AS_b' 'True'}}
{{/setswitch}}
{{setswitch @root.E.S 'sw_Enable_AS_ws' 'False'}}
{{/setswitch}}











-- PART 4 -- Blocks
-- bl-BlockLarge-1234
-- bs-BlockSmall-1234
{{~#items E.S 'Drop Box'}}
{{~#devices @root.E.S 'bl-*'}}
{{~#each .}} 
{{~#split CustomName '-'}}
{{~#test Length eq '3'}}
{{~#split .2 '/'}}
{{set 'Ids' (concat . ',')}}
{{/split}}
{{~#test ../../../../Id 'in' '@Ids.BlockL,2342'}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n Id}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/split}}
{{/each}}
{{/devices}}
{{~#devices @root.E.S 'bs-*'}}
{{~#each .}} 
{{~#split CustomName '-'}}
{{~#test Length eq '3'}}
{{~#split .2 '/'}}
{{set 'Ids' (concat . ',')}}
{{/split}}
{{~#test ../../../../Id 'in' @Ids.BlockS}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n Id}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/split}}
{{/each}}
{{/devices}}
{{~#move . @root.E.S 'PassTwo'}}
 {{datetime 'HH:mm:ss'}} | <color=yellow>Sort</color><pos=105>| {{Count}}</pos><pos=145>| {{i18n Id}} </pos><pos=320>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
{{/items}}
{{setswitch @root.E.S 'sw_Enable_AS_b' 'False'}}
{{/setswitch}}




-- -------------------------------------------------------
-- Description:		Auto Enables Sort & Move from docked, as soon items are in the "Drop Box"
--					Auto Disables the switch when box is empty to reduce lag!
--					OPTIONAL, but highly recomended to avoid lag!
-- Requires:
-- * Switch: 		sw_AutoMove
-- * Script LCD:	Script:[+2]CheckDropBox
-- * Output LCD:	CheckDropBox
-- * Boxes Src:		Drop Box
-- -------------------------------------------------------
{{Items E.S 'Drop Box'}}
{{test count geq 1}}
{{setswitch @root.E.S 'sw_AutoMove' 'True'}}
inhalt mehr 1: {{count}}
{{/setswitch}}
{{else}}
{{setswitch @root.E.S 'sw_AutoMove' 'False'}}
inhalt weniger 1:: {{count}}
{{/setswitch}}
{{/test}}
{{/Items}}


-- -------------------------------------------------------
-- Description:		Shows Container content according to container name on LCD with similar name
-- Requires:
-- * Script LCD:	Script:Display_ID
-- * Output LCD:	<x>-<Name>-<ID>y
-- * Boxes:			<x>-<Name>-<ID>		<x>-<Name>-<ID>/<ID>/<ID>....
-- * Info:			<x> can be any identifier (must be identical for Box&LCD
--					<Name> can be any name you want
--					<ID> is the script id of an item, you can add multiple IDs by seperating with a /
--					The LCD needs a "y" at the end
-- -------------------------------------------------------
{{#devicesoftype E.S 'Container'}}
{{#each .}}
{{#devices @root.E.S (concat CustomName 'y')}}
{{#each .}}
{{#settextblock .}}
<size=3><align=center><color=red>{{~islocked @root.E.S ../../../.}}<sprite=4>-= Locked =-<sprite=4>{{/islocked}}</color></align></size>
{{#items @root.E.S ../../../CustomName}}
<size=4><pos=1>{{i18n key}}</pos> <pos=70>{{~math}}{{format Count '{0,6:N0}'}}{{/math}}</size></pos>
{{/items}}
{{/settextblock}}
{{/each}}
{{/devices}}
{{/if}}
{{/each}} 
{{/devicesoftype}}


-- -------------------------------------------------------
-- Description:		MegaLogSort, Collects all AutoDock* and AutoMove* scripts into a single output for display
-- Requires:
-- * Script LCD:		Script:[+]MegaLogSort
-- * Output Projector:	MegaLog (Width: 3.25 (output is 2 blocks) ; Height: 2.0 ; X/Y Offset: so it fits... for me -0.75 and -1.5)
-- 					
-- -------------------------------------------------------
<color=grey> Time <pos=55>| Type</pos><pos=105>| Count</pos><pos=145>| Object</pos><pos=320>| Direction Source/Target</pos></color>
{{~devices @root.E.S 'AutoSort*'}}
{{scroll 48 2}}
{{~#each .}}
{{~gettext .}}
{{.}}
{{~/gettext}}
{{/each}}
{{/scroll}}
{{~/devices}}

