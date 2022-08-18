-- -------------------------------
-- Requires:
--          * LCD:            Script:[+12]ReFillMedic
--          * LCD/Projector:  ReFillMedic
--          * Dimension:      3x3
--          * Box:            FoodMedic-Prod-1
-- Created by Sephrajin
-- -----------------------------------------

{{~#test (calc @root.CycleCounter '%' 13) eq 0}}
{{set 'TargetBox' 'EssenMedic-Prod-1'}}
	{{~#devicesoftype E.S 'Container,Fridge'}}
		{{~#each .}}
			{{~#if CustomName}}
			{{~#items @root.E.S CustomName}}
				{{~#test Id in '4325,4329,4331,4357,4374,4398,4399,4401,4405-4407,4411,4412,4415,4416,4422,4424,4428,4429,4431,4439,4440,4443,4445,4447,4448,4451,4455,4456,4461,4480,4481,4491'}}
{{~#move this @root.E.S @root.data.TargetBox 200 }}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=green>Refill</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
			{{/items}}
			{{/if}}
		{{/each}} 
	{{/devicesoftype}}
{{/test}}