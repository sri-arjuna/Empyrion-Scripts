{{~set 'SortCONT' 'Food,Ingredient,Medic,Ingot,Ore,Sprout,Component'}}
{{~set 'SortPRE' 'f-*,fp-*,fm-*,i-*,o-*,Sprout*,c-*'}}
{{~#split @root.data.SortCONT ','}}{{set 'CONT' .}}{{/split}}
{{~#split @root.data.SortPRE ','}}{{set 'PRE' .}}{{/split}}

{{~#items E.S 'Drop Box*'}}
{{set 'cID' id}}
{{id}}
	{{~#each @root.data.CONT}}
<align=center><i>Working with {{this}}</i></align>
			{{~#devices @root.E.S (lookup @root.data.PRE @index)}}
				{{~#each .}}
	{{! Working with current prefix}}
					{{~#split CustomName '-'}}
						{{~#test Length eq '3'}}
							{{~#split .2 '/'}}{{set 'here' (concat . ',')}}{{~/split}}
						{{else}}
							{{set 'here' CustomName}}
						{{/test}}
					{{/split}}
-> {{@root.Data.here}} == {{@root.data.cID}} ??
					{{~#test @root.data.cID 'in' @root.Data.here}}
sollte move 
{{~#move . @root.E.S ../../../CustomName}}
-> YES:: S:{{Source}} t:{{Target}}
{{else}}
-> Nope
{{/move}}
					{{/test}}
				{{/each}}
			{{/devices}}
	{{/each}}
{{/items}}