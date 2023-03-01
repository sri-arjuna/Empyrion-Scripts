{{#test (calc @root.CycleCounter '%' 13) eq 0}}
	{{~#items E.S '[ffa31a]Box-Drop Stage-640k'}}
	{{~#devices @root.E.S 'div-Eden*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @IDs.EdenComponents '')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S 'div-Comp*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
			{{~#test Length eq '3'}}
			{{~#test ../../../../Id 'in' (concat @IDs.Components @IDs.WeaponPlayerUpgrades '') }}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
			{{/test}}
			{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
		{{~#devices @root.E.S 'div-Deco-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
			{{~#test Length eq '3'}}
			{{~#test ../../../../Id 'in' (concat @IDs.Deco '') }}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
			{{/test}}
			{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
{{/items}}
{{/test}}