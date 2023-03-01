{{#test (calc @root.CycleCounter '%' 7) eq 0}}
	{{~#items E.S '[ffa31a]Box-Drop Stage-640k'}}
	{{~#devices @root.E.S 'bl-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.BlockL '')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
				{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
		{{~#devices @root.E.S 'dl-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
			{{~#test Length eq '3'}}
			{{~#test ../../../../Id 'in' (concat @Ids.DeviceL '5') }} 
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
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
			{{~#test ../../../../Id 'in' (concat @Ids.DeviceS '') }}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
			{{/test}}
			{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{/items}}
{{/test}}



----
BlockL :: 1691,2078,2342,2355,2368
DeviceL:: 266,414,720,1131,1315,1687,1809,1811,2125,2147,2149,2150,2209,2230,2231,2235,2337,2338,2339,2340,2341,2029,2030,2031,2198,2205,2222,2690,2694,2696,2698,2699,2717,2718,2720,2722,2724,2726,2728,2730,2732,2734,2736,2738,2740,2742,275