{{#test (calc @root.CycleCounter '%' 7) eq 0}}
	{{~#items E.S 'StageSorting7'}}
	{{~#devices @root.E.S 'pma-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.ArmorMod '4717-4726,4746-4752,7206-7211,7228-7232')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S 'pmw-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' '4351-4356'}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}{{~#move . @root.E.S 'StageSorting8'}}{{/move}}{{/items}}
{{/test}}