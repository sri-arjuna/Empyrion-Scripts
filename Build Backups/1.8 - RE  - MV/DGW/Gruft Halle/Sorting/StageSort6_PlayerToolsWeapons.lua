{{#test (calc @root.CycleCounter '%' 17) eq 0}}
	{{~#items E.S 'StageSorting5'}}
	{{~#devices @root.E.S 'pw-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.WeaponPlayer '4133,4134,4138,4139,4143,5661,5846,7260')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S 'pwt-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.Tools '339,554,706,1108-1110,1436,2744,4104,4115,4117-4118,4122,4125,4127,4135-4137,4153,4158,4177,4186,4348,4350,4796,5654,7212,7215,7217,7226')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}{{~#move . @root.E.S 'StageSorting6'}}{{/move}}{{/items}}
{{/test}}

-- -----------------------

Incendiary Minigun-7212/7215/7217/7226

Laser Minigun-4122

High-Output Plasma Cannon-4125

{{~#move . @root.E.S '*Box Manual Sort*'}}
 {{datetime 'HH:mm:ss'}} <pos=75>| <color=orange>Stage</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{id}}-{{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}