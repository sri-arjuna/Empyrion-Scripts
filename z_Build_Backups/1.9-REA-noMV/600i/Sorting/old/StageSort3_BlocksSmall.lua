{{#test (calc @root.CycleCounter '%' 11) eq 0}}
	{{~#items E.S '[ffa31a]Box-Drop Stage-640k'}}
	{{~#devices @root.E.S 'bs-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.BlockS '')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{~#devices @root.E.S 'ds-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
			{{~#test Length eq '3'}}
			{{~#test ../../../../Id 'in' (concat @Ids.DeviceS '') }}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
{{/move}}
			{{/test}}
			{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
{{/items}}
{{/test}}


BlockS ::
DeviceS :: 589,730,712,715,721,1020,1093,1118,1119,1230,1642,1684,1685,1686,1688,1693,1712,1800,1810,2026,2027,2028,2124,2126,2148,2151,2152,2203,2204,2232,2233,2336,2119,2173,2689,2695,2697