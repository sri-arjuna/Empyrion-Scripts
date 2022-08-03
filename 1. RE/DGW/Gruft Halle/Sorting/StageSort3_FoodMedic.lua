{{#test (calc @root.CycleCounter '%' 7) eq 0}}
	{{~#items E.S 'StageSorting2'}}
	{{~#devices @root.E.S 'Essen-Output-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.Food '4373,4397,4402,4409,4417,,4457,4459,4460,4463,4465,4468-4473,4477,5710-5713,5796-5801,7376-7377,7456-7459')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S 'Medic-Output-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.Medic '4437,4451,4474-4476,4479,4483-4485,4487-4489,4493,5699,5704,5705,5715,5904,7317,7446,7448,7450,7452-7454,7461-7466')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}{{/devices}}{{~#move . @root.E.S 'StageSorting3'}}{{/move}}{{/items}}
{{/test}}
