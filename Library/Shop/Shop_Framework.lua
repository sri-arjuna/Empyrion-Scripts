{{~set 'ItemKey' 'AsgardArmorDonat,Eden_PlasmaRifleXCorp_Ammo,n/a,/n/a'}}
{{~set 'Amount' '1,10,0,0'}}
{{~set 'Price' '1500,1,Z,Z'}}

{{~#split @root.data.ItemKey ','}}{{set 'aKey' .}}{{/split}}
{{~#split @root.data.Amount ','}}{{set 'aAmount' .}}{{/split}}
{{~#split @root.data.Price ','}}{{set 'aPrice' .}}{{/split}}

{{~#split @root.data.ItemKey ','}}
{{#each .}}
	{{~set 'CleanUp' '0'}}
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
							{{~#move this @root.E.S 'Cash_In' }}
								{{~#move ../../../../this @root.E.S @root.data.Buy @root.data.tAmount}}
									{{~set 'CleanUp' '1'}}
								{{/move}}
							{{/move}}
						{{/test}}
					{{/test}}
				{{/items}}
			{{/test}}
		{{/test}}
	{{/items}}
	{{~#test @root.data.CleanUp geq '1'}}
{{datetime}} Bug starts here
		{{~#items @root.E.S 'Cash_In'}}
Debug:	k{{key}} c{{count}}
			{{~#move this @root.E.S 'Cash_Depot'}}
Debug:	Deposit
				{{~set 'CleanUp' '0'}}
			{{/move}}
		{{/items}}
		
		{{~#items @root.E.S @root.data.Buy}}
			{{~#test key eq (lookup @root.data.aKey @index)}}
Debug:	k{{key}} c{{count}}
				{{~#move this @root.E.S (concat 'Out-' @index)}}
Debug:	Item to box out
					{{~set 'CleanUp' '0'}}
				{{/move}}
			{{/test}}
		{{/items}}
	{{/test}}
{{/each}}
{{/split}}