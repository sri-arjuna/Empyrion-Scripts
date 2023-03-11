-- -------------------------------
-- Requires:
--          * LCD:            Script:[+18]ReFillMedic
--          * LCD/Projector:  ReFillMedic
--          * Dimension:      1x1
--          * Box:            FoodMedic-Prod-1
-- Created by Sephrajin
-- -----------------------------------------
{{#test (calc @root.CycleCounter '%' 3) eq 0}}
	{{~set 'TargetBox' '[3ADF00]Fridge-Input-*'}}
	{{#devicesoftype E.S 'Container;Fridge'}}
		{{#each .}}
			{{#if CustomName}}
			{{#items @root.E.S CustomName}}
				{{#test Id in (concat @IDs.IngredientBasic @IDs.IngredientExtra @IDs.IngredientExtraMod)}}
{{move this @root.E.S @root.data.TargetBox 100 }}
{{Source}} -> {{Destination}} {{format Count '{0,5}'}} : {{i18n Id}}
{{/move}}
				{{/test}}
			{{/items}}
			{{/if}}
		{{/each}} 
	{{/devicesoftype}}
{{/test}}