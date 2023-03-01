{{#test (calc @root.CycleCounter '%' 2) eq 0}}
	{{~#items E.S '[ffa31a]Box-Drop Stage-640k'}}
	{{~#devices @root.E.S '[ff5555]Ammo-Energy-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @IDs.AmmoAllEnergy ',')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{else}}{{~#move ../../../../../. @root.E.S '[ff5555]Ammo-Overflow-320k'}}{{/move}}
{{/move}}
				{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S '[ff5555]Ammo-Projectile-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' @IDs.AmmoAllProjectile}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{else}}{{~#move ../../../../../. @root.E.S '[ff5555]Ammo-Overflow-320k'}}{{/move}}
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S '[ff5555]Ammo-Rockets-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' @IDs.AmmoAllRocket}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{else}}{{~#move ../../../../../. @root.E.S '[ff5555]Ammo-Overflow-320k'}}{{/move}}
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{/items}}
{{/test}}