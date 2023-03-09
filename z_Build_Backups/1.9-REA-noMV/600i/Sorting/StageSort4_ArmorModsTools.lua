{{#test (calc @root.CycleCounter '%' 2) eq 0}}
	{{~#items E.S '[ffa31a]Box-Drop Stage-640k'}}
	{{~#devices @root.E.S '[0000ff]div-Armor Mods-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @IDs.ArmorMod @IDs.Armor ',')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
				{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S '[ff6600][b]div-Tools-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' @IDs.Tools}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S '[00ffaa]div-Data Pads-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @IDs.DataPads @IDs.Report @IDs.Hack @IDs.Keycard)}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{/items}}
{{/test}}