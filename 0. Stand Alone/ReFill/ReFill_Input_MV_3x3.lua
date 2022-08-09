-- ------------------------------
-- Desciption:      Re fills the input box for the constructors with all required materials. For mass/volume -> Requires: 145k volume
--
--      LCD:        Script:[+16]SortRefillInput
--      Output LCD: SortRefillInput
--      Dimension:  3x3
--
--   Manual Changes:
--        You can change the set "TargetBox" to the boxname of your preference.
--        You can also change the 18 of the scroll command or remove that command alltogether. (mind the closing tag)
--
-- by OnlyJens83 and Sephrajin
-- -------------------------------

{{~#test (calc @root.CycleCounter '%' 3) eq 0}}
{{~set 'TargetBox' 'Box Everything Input'}}
	{{~scroll 18 1}}
	{{~#devicesoftype E.S 'Container'}}
		{{~#each .}}
			{{~#if CustomName}}
				{{~#items @root.E.S CustomName}}
				{{~#test Id in (concat @Ids.Ingot '4296,4302-4315,4324,4325,4328,4329,4331,4330,4334,4337,4338-4340,4343,4346,4350,4357,4360,4361-4363,4364,4366,4367,4374-4376,4401,5097,7344,7345,')}}
{{~#move this @root.E.S @root.data.TargetBox 1000 }}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos><pos=75>| <color=green>Refill</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}}</pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{~#test Id in '4351-4356,4378-4381,5099,5108,5706-5708,7298-7303,7310,7312,7313,7320,7330,7341,7343,7357'}}
{{~#move this @root.E.S @root.data.TargetBox 100}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos><pos=75>| <color=green>Refill</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}}</pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{~#test id in '4341,4444,4358,4377'}}
{{~#move this @root.E.S @root.data.TargetBox 500}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos><pos=75>| <color=green>Refill</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}}</pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{/items}}
			{{/if}}
		{{/each}} 
	{{/devicesoftype}}
	{{/scroll}}
{{/test}}
