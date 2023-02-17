{{~#devices E.S. 'Box-*'}}
	{{~#each .}}
		{{~set 'CN' CustomName}}
		{{~#split CustomName '-'}}
			{{~set 'Box' .1}}
			{{~set 'lblID' (concat .1 '_id')}}
			{{~set 'lblKey' (concat .1 '_key')}}
		{{~/split}}
		{{~#devices @root.E.S @root.Data.lblID}}
			{{~#each .}}
				{{~settextblock .}}
					{{~#items @root.E.S. @root.data.CN}}{{id}},{{/items}}
				{{/settextblock}}
			{{/each}}
		{{/devices}}
		{{~#devices @root.E.S @root.Data.lblKey}}
			{{~#each .}}
				{{~settextblock .}}
					{{~#items @root.E.S. @root.data.CN}}{{key}},{{/items}}
				{{/settextblock}}
			{{/each}}
		{{/devices}}
	{{/each}}
{{/devices}}
