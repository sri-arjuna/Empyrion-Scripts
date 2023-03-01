{{~#items E.S '[ffa31a]Box-Drop Stage-640k'}}
	{{~#devices @root.E.S '*Fridge-Input-*'}}
		{{~#each .}} 
			{{~#test ../../Id 'in' (concat @IDs.IngredientBasic ',')}}
				{{~#move ../../../. @root.E.S ../CustomName}}fridge input
				{{/move}}
			{{/test}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S '*Fridge-Output-*'}}
		{{~#each .}}
			{{~#test ../../Id 'in' (concat @Ids.Food ',')}}
				{{~#move ../../../. @root.E.S ../CustomName}}fridge output (food)
				{{/move}}
			{{/test}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S '*Medic-Output-*'}}
		{{~#each .}}
			{{~#test ../../Id 'in' (concat @Ids.Medic ',')}}
				{{~#move ../../../. @root.E.S ../CustomName}}medic output
				{{/move}}
			{{/test}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S '*Box-Sprouts-*'}}
		{{~#each .}}
			{{~#test ../../Id 'in' (concat @Ids.Sprout ',2126')}}
				{{~#move ../../../. @root.E.S ../CustomName}}sprout
				{{/move}}
			{{/test}}
		{{/each}}
	{{/devices}}
{{/items}}



-- 
Ingredient: 4398,4405,4406,4407,4410,4412,4413,4415,4416,4422,4424,4428,4429,4447,4448,4451,4461,4480,
Food: 4373,4397,4402,4409,4417,4420,4426,4457,4459,4460,4463,4465,4468-4473,4477,5710-5713,5796-5801,7376-7377,7456-7459
Medic: 4437,4451,4474-4476,4479,4483-4489,4493,5699,5704,5705,5715,7316,7317,7446,7448,7450,7452-7454,7461-7466
Sprout: 2126=Pentaxid