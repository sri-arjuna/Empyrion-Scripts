{{#test (calc @root.CycleCounter '%' 5) eq 0}}
	{{~#items E.S 'StageSorting6'}}
	{{~#devices @root.E.S 'wcv-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' @Ids.WeaponCV}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S 'wba-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.WeaponBA '1679,2129,2134,2139,2144,2154,2159,2164,2169,2172,2191-2197,2236,2242,2245-2248,2254,2674-2676,2677,2678,2680,2681,2683-2688,2747-2754,2765,2768-2770,2778-2781,2785,2786')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}{{~#move . @root.E.S 'StageSorting7'}}{{/move}}{{/items}}
{{/test}}