{{~#test (calc @root.CycleCounter '%' 30) eq 0}}
{{~scroll 18 1}}
{{~#devicesoftype E.S 'Container'}}
	{{~#each .}}
		{{~#if CustomName}}
			{{~#items @root.E.S CustomName}}
			{{~#test Id in '4296,4302,4350,4362,4367,7343,4375,4376,4374,4357,4324,4325,4401,4340,4338,4339,4331,4328,4329,4314,4307,4308,4315,4303,4304,4311,4360,4361,4363,4364,4306,4310,4312,4343,4313,4305,4330,4309,4334,4337,4366,4367,4346,5097,7344,7345,7357,'}}
{{~#move this @root.E.S 'Input Workbox' 1000 }}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=green>Refill</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/move}}
			{{/test}}
			{{~#test Id in '4351-4356,4378-4381,5099,5108,5706-5708,7298-7303,7310,7312,7313,7320,7330,7341'}}
{{~#move this @root.E.S 'Input Workbox' 200}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=green>Refill</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/move}}
			{{/test}}
			{{~#test Id 'in' @Ids.Ingot}}
{{~#move this @root.E.S 'Input Workbox' 2000}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=green>Refill</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/move}}
			{{/test}}
			{{~#test id in '4341,4444,4358,4377'}}
{{~#move this @root.E.S 'Input Workbox' 2000}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=green>Refill</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/move}}
			{{/test}}
			{{/items}}
		{{/if}}
	{{/each}} 
{{/devicesoftype}}
{{/scroll}}
{{/test}}
