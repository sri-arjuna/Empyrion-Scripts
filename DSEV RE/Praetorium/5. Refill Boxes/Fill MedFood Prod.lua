{{#test (calc @root.CycleCounter '%' 30) eq 0}}
	{{#devicesoftype E.S 'Container;Fridge'}}
		{{#each .}}
			{{#if CustomName}}
			{{#items @root.E.S CustomName}}
				{{#test Id in '4398,4405,4406,4407,4416,4422,4424,4428,4429,4439,4440,4443,4445,4448,4451,4456,4481'}}
{{move this @root.E.S 'FoodMedic-Prod-1' 100 }}
{{Source}} -> {{Destination}} {{format Count '{0,5}'}} : {{i18n Id}}
{{/move}}
				{{/test}}
			{{/items}}
			{{/if}}
		{{/each}} 
	{{/devicesoftype}}
{{/test}}
