-- PART 3 -- Blocks
-- bl-BlockLarge-1234
-- bl-BlockLarge-1235
-- bs-BlockSmall-1234
-- bs-BlockSmall-1235
{{#test (calc @root.CycleCounter '%' 5) eq 0}}
	{{~#items E.S 'StageSorting3'}}
	{{~#devices @root.E.S 'bl-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.BlockL '1691,2078,2342,2355,2368')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
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
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.BlockS '')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}{{~#move . @root.E.S 'StageSorting4'}}{{/move}}{{/items}}
{{/test}}

Blocks small
589,603,604,653,730,1107,1127,1130,1417,1447,1484,1575,1583,1594,1690,1774,1776,1888,2023-2025,2119,2173,2266,2689,2695,2697,2381,,2394,2407,289,927,1336,1719,1739

Blocks Large
330,928,929,1111,1132,1134,1231,1263,1318,1377,1402,1494,1495,1513,1691,1808,1812,2032-2034,2078,2222,2342,2690,2694,2696,2698,2699,2717-2743,2755,2355,2368,2064-2075,2702-2713