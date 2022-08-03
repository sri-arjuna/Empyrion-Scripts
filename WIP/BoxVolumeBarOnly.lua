<size=+8> </size>
{{~#devices E.S '*Loot 1'}}{{#each .}}
	{{~set 'CN' CustomName}}
	{{~split CustomName '-'}}{{~set 'N' .1}}{{~/split}}
	{{~#items @root.E.S @root.Data.CN}}
		{{~#math @root.Data.T '+' (calc (configattr Id 'Volume') '*' Count)}}{{~set 'T' .}}{{~/math}}
	{{~/items}}
	{{~#math (calc @root.Data.T '/' ./Device.VolumeCapacity) '*' 100}}{{~set 'P' .}}{{/math}}
	{{~#test @root.Data.P leq '50'}}{{set 'c1' '1D1'}}{{set 'c2' '030'}}{{/test}}
	{{~#test @root.Data.P in '50-75'}}{{set 'c1' 'DA1'}}{{set 'c2' '220'}}{{/test}}
	{{~#test @root.Data.P in '75-90'}}{{set 'c1' 'B40'}}{{set 'c2' '310'}}{{/test}}
	{{~#test @root.Data.P geq '90'}}{{set 'c1' 'D11'}}{{set 'c2' '300'}}{{/test}}
<pos=12>{{~concat '<color=#' @root.Data.c1 '>'}}{{~bar @root.Data.T 0 ./Device.VolumeCapacity 10 '▒' (concat '<color=#' @root.Data.c2 '>░</color>')}}</color></pos>
{{~set 'T' 0}}
{{/each}}{{/devices}}

-- --------------------------------------
<size=+8> </size>
{{~#devices E.S '*Loot 1'}}{{#each .}}
	{{~set 'CN' CustomName}}
	{{~split CustomName '-'}}{{~set 'N' .1}}{{~/split}}
	{{~#items @root.E.S @root.Data.CN}}
		{{~#math @root.Data.T '+' (calc (configattr Id 'Volume') '*' Count)}}{{~set 'T' .}}{{~/math}}
	{{~/items}}
	{{~#math (calc @root.Data.T '/' ./Device.VolumeCapacity) '*' 100}}{{~set 'P' .}}{{/math}}
	{{~#test @root.Data.P leq '50'}}{{set 'c1' '1D1'}}{{set 'c2' '030'}}{{/test}}
	{{~#test @root.Data.P in '50-75'}}{{set 'c1' 'DA1'}}{{set 'c2' '220'}}{{/test}}
	{{~#test @root.Data.P in '75-90'}}{{set 'c1' 'B40'}}{{set 'c2' '310'}}{{/test}}
	{{~#test @root.Data.P geq '90'}}{{set 'c1' 'D11'}}{{set 'c2' '300'}}{{/test}}
<pos=21>{{~concat '<color=#' @root.Data.c1 '>'}}{{~bar @root.Data.T 0 ./Device.VolumeCapacity 10 '▒' (concat '<color=#' @root.Data.c2 '>░</color>')}}</color></pos>
{{~set 'T' 0}}
{{/each}}{{/devices}}