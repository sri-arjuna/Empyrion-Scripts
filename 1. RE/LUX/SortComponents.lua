{{~set 'MoveVal' '0'}}
{{#test (calc @root.CycleCounter '%' 5) eq 0}}
	{{~#items E.S 'Drop Box'}}
	{{~#devices @root.E.S 'Component*'}}
		{{~#each .}}
			{{~#test id eq 1716}}
				{{~#test ../../../Id 'in' (concat @IDs.Components @IDs.EdenComponents ',7301,4367,4374,7357' )}}
{{~#move ../../../../. @root.E.S 'Components'}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{~else}}{{~set 'MoveVal' '2'}}{{/move}}
{{~#test @root.data.MoveVal eq 2}}
test move2
	{{~#move ../../../../../. @root.E.S 'Components2'}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
	{{~else}}
		failt move 2 .{{../../../../.}} n:{{name}}
		{{~set 'MoveVal' '3'}}
	{{/move}}
{{/test}}
					{{/test}}
			{{/test}}
			{{set 'MoveVal' '0'}}
		{{/each}}
	{{/devices}} 
	{{/items}}
{{/test}}
