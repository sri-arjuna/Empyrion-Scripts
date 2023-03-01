{{#test (calc @root.CycleCounter '%' 5) eq 0}}
	{{~#items E.S '[ffa31a]Box-Drop Stage-640k'}}
	{{~#devices @root.E.S 'div-Wpn Structures-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.WeaponCV @Ids.WeaponBA @Ids.WeaponSV @Ids.WeaponHV)}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
				{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S 'div-Wpn Player-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.WeaponPlayer @Ids.WeaponPlayerEpic '')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}{{/items}}
{{/test}}

