{{#test (calc @root.CycleCounter '%' 13) eq 0}}
	{{~#items E.S 'StageSorting4'}}
	{{~#devices @root.E.S 'dl-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
			{{~#test Length eq '3'}}
			{{~#test ../../../../Id 'in' (concat @Ids.DeviceL '266,414,720,1131,1315,1687,1809,1811,2125,2147,2149,2150,2209,2230,2231,2235,2337,2338,2339,2340,2341,2029,2030,2031,2198,2205,2222,2690,2694,2696,2698,2699,2717,2718,2720,2722,2724,2726,2728,2730,2732,2734,2736,2738,2740,2742,2755') }} 
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
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
			{{~#test ../../../../Id 'in' (concat @Ids.DeviceS '589,730,712,715,721,1020,1093,1118,1119,1230,1642,1684,1685,1686,1688,1693,1712,1800,1810,2026,2027,2028,2124,2126,2148,2151,2152,2203,2204,2232,2233,2336,2119,2173,2689,2695,2697') }}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
			{{/test}}
			{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}{{~#move . @root.E.S 'StageSorting5'}}{{/move}}{{/items}}
{{/test}}

712,715,721,1020,1093,1118,1119,1230,1642,1684,1685,1686,1688,1693,1712,1800,1810,2026,2027,2028,2124,2126,2148,2151,2152,2203,2204,2232,2233,2336,





-- ---------------------------------------
-- Devices Large
-- @Ids.DeviceL
-- 259,260,263,266,278,291,335,336,414,420,457,468,469,498,558,564,686,714,717,720,724,772,778,781,835,934,960,962,1002,1008,1016,1034,1035,1095,1112,1120,1131,1136,1253,1257,1278,1304,1315,1321,1370,1371,1372,1465,1466,1486,1490,1500,1571,1588,1627,1628,1682,1683,1687,1689,1692,1706,1711,1809,1811,1813,1956,2029,2030,2031,2125,2147,2149,2150,2198,2205,2209,2230,2231,2235,2337,2338,2339,2340,2341,2342,2444,2446,2448,2449

-- ---------------------------------------
-- Devices Small
-- @Ids.DeviceS
-- 272,414,418,419,422,423,456,470,471,536,547,548,694,695,696,697,698,712,715,721,1020,1093,1118,1119,1230,1278,1321,1375,1380,1435,1437,1446,1500,1584,1585,1591,1592,1627,1642,1684,1685,1686,1688,1693,1712,1800,1810,1956,2026,2027,2028,2124,2126,2148,2151,2152,2203,2204,2232,2233,2336,2445,2447