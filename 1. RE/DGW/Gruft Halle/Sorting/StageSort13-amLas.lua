{{#test (calc @root.CycleCounter '%' 13) eq 0}}
	{{~#items E.S 'StageSorting12'}}
	{{~#devices @root.E.S 'amLas-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' '4156,4157,4160,4162,4246,4250,4253,4256,4258,4260,4264,4266,4267,5703,5720,5721,5724,5725,5728,5730,5735,5848,5849,7197,7199,7201,7203,7274'}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
{{~#move . @root.E.S '*Box Manual Sort*'}}
 {{datetime 'HH:mm:ss'}} <pos=75>| <color=orange>Stage</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{id}}-{{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}{{/items}}
{{/test}}
