{{#test (calc @root.CycleCounter '%' 2) eq 0}}
	{{~#items E.S 'Drop Box*,Output Ingots'}}
	{{~#devices @root.E.S 'i-*;m-*;c-*'}}
	{{~#each .}}
		{{~#split CustomName '-'}}
			{{~#test Length eq '3'}}
			{{~#split .2 '/'}}{{set 'Ids' (concat . ',4296,')}}
			{{~/split}}
				{{~#test ../../../../Id 'in' @root.Data.Ids}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
			{{/test}}
		{{/split}}
	{{/each}}
	{{/devices}}{{/items}}
{{/test}}