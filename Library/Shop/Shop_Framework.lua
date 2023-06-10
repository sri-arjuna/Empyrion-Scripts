{{~set 'ItemKey' 'AsgardArmorDonat,Eden_PlasmaRifleXCorp_Ammo,DonatCoreNoCPU,/n/a'}}
{{~set 'Amount' '1,10,1,0'}}
{{~set 'Price' '1500,20,8000,0'}}

{{~#split @root.data.ItemKey ','}}{{set 'aKey' .}}{{/split}}
{{~#split @root.data.Amount ','}}{{set 'aAmount' .}}{{/split}}
{{~#split @root.data.Price ','}}{{set 'aPrice' .}}{{/split}}

{{~#split @root.data.ItemKey ','}}
{{#each .}}
	{{~set 'tAmount' (lookup @root.data.aAmount @index)}}
	{{~set 'tPrice' (lookup @root.data.aPrice @index)}}
	{{~set 'Stock' (concat 'Stock-Item-' @index)}}
	{{~set 'Buy' (concat 'Buy-Item-' @index)}}
	{{~set 'N' (i18n .)}}
	{{~#devices @root.E.S (concat "Price-" @index )}}{{~#each .}}{{settext . @root.data.tPrice }}{{/each}}{{/devices}}
	{{~#devices @root.E.S (concat "item-" @index )}}{{~#each .}}{{settext . @root.data.N }}{{/each}}{{/devices}}
	{{#items @root.E.S @root.data.Stock}}
		{{#test key eq (lookup @root.data.aKey @index)}}
			{{~#test Count geq @root.data.tAmount}}
				{{~#items @root.E.S @root.data.Buy}}
					{{~#test Key eq 'PlatinumCard'}}
						{{~#test Count geq @root.data.tPrice}}
							{{~#move this @root.E.S 'Cash_In' @root.data.tPrice }}
{{datetime}}::
1. {{#each @root.E.S.Players}}{{Name}},{{/each}} payed {{@root.data.tPrice}}
								{{~#move ../../../../this @root.E.S @root.data.Buy @root.data.tAmount}}

2. for {{count}} item: {{lookup @root.data.aKey @index}}, delivered!
								{{/move}}
							{{/move}}
						{{/test}}
					{{/test}}
				{{/items}}
			{{/test}}
		{{/test}}
	{{/items}}

	{{~#items @root.E.S 'Cash_In'}}
		{{~#move this @root.E.S 'Cash_Depot'}}
		{{/move}}
	{{/items}}

	{{~#items @root.E.S @root.data.Buy}}
		{{~#test key eq (lookup @root.data.aKey @index)}}
			{{~#move this @root.E.S (concat 'Out-' @index)}}
			{{/move}}
		{{/test}}
	{{/items}}
{{/each}}
{{/split}}