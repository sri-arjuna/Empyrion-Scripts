-- -------------------------------
-- Requires:
--          * LCD:            Script:[+18]ReFillMedic
--          * LCD/Projector:  ReFillMedic
--          * Dimension:      1x1
--          * Box:            FoodMedic-Prod-1
-- Created by Sephrajin
-- -----------------------------------------
{{#test (calc @root.CycleCounter '%' 11) eq 0}}
	{{~set 'TargetBox' 'Plants Input'}}
	{{#devicesoftype E.S 'Container;Fridge'}}
		{{#each .}}
			{{#if CustomName}}
			{{#items @root.E.S CustomName}}
				{{#test Id in '4376,4398,4399,4401,4405-4407,4411,4412,4415,4416,4422,4424,4428,4429,4431,4439,4440,4443,4445,4447,4448,4451,4455,4456,4480,4481'}}
{{move this @root.E.S @root.data.TargetBox 2000 }}
{{Source}} -> {{Destination}} {{format Count '{0,5}'}} : {{i18n Id}}
{{/move}}
				{{/test}}
			{{/items}}
			{{/if}}
		{{/each}} 
	{{/devicesoftype}}
{{/test}}