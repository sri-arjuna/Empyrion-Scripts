{{~#devices E.S 'Stock-Item-*'}}
	{{#each .}}
		{{~set 'CN_Full' CustomName}}
		{{~#split CustomName '-'}}
			{{~set 'Type' .0}}
			{{~set 'NR' .2}}
			{{~set 'OutStock' (concat "Stock-LCD-" @root.data.NR )}}
		{{~/split}}
		{{~#devices @root.E.S @root.data.OutStock}}
		{{~#each .}}
			{{~#settextblock .}}
				{{#items @root.E.S ../../../CustomName}}
<color=white><u></color><align=center><i>Vorrat / Stock</i></align></u>
 
<size=-2><pos=1>{{i18n key}}</pos> <pos=70>{{~math}}{{format Count '{0,6:N0}'}}{{/math}}</size></pos>
				{{else}}
<color=white><u></color><align=center><i>Vorrat / Stock</i></align></u>
-- > Out of stock <--
				{{/items}}
			{{/settextblock}}
			{{/each}}
		{{/devices}}
	{{/each}} 
{{/devices}}
{{~#devices E.S 'Buy-Item-*'}}
	{{#each .}}
		{{~set 'CN_Full' CustomName}}
		{{~#split CustomName '-'}}
			{{~set 'Type' .0}}
			{{~set 'NR' .2}}
			{{~set 'OutBuy' (concat "Buy-LCD-" @root.data.NR )}}
			{{~set 'PriceLCD' (concat "Price-" @root.data.NR )}}
			{{~#devices @root.E.S (concat "Price-" @root.data.NR )}}
				{{~#each .}}
					{{gettext .}}
					{{~set 'Price' . }}
					{{/gettext}}
				{{/each}}
			{{/devices}}
			
		{{~/split}}
		{{~#devices @root.E.S @root.data.OutBuy}}
		{{~#each .}}
			{{~#settextblock .}}
				{{#items @root.E.S ../../../CustomName}}
{{~#test Key 'eq' 'PlatinumCard'}}
Platinum: <pos=50>{{~math}}{{format Count '{0,6:N0}'}}{{/math}} / {{~math}}{{format @root.data.Price '{0,6:N0}'}}{{/math}}</pos>
{{else}}
Platinum: <pos=50>#!$% !! / {{~math}}{{format @root.data.Price '{0,6:N0}'}}{{/math}}</size></pos>
{{/test}}
				{{else}}
Bezahl-Box // Pay-box
				{{/items}}
			{{/settextblock}}
			{{/each}}
		{{/devices}}
	{{/each}} 
{{/devices}}