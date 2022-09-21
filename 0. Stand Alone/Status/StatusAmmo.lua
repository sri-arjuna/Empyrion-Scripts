-- Description:
--          Shows the current and total expected ammount of each specific ammo type of a vessel (anywhere, not just ammo box!)
--          You MUST edit the first 2 'set' lines with the IDs of the ammo used, and figure out the amount of the according ammo type that makes sense for it!
-- Requires:
--         Script LCD:         Script:StatusAmmo
--         Output Projector:   StatusAmmo
--         Width:              2
-- Notes:
--         Sadly, Eden ammo types dont show a "proper" name, but will have "Eden_" and "_ammo" surrounding the name.
--         That is because either it is from a mod, thus not having a proper translation string, or because they did not enter the according values to the config.
-- -----------------------------------

{{~set 'AmmoID' '4152,4262,4253,7257,7259,7108'}}
{{~set 'AmmoMax' '36000,6000,6000,4000,4000,1000'}}
{{~#split @root.data.AmmoMax ','}}{{set 'AmmoMaxList' .}}{{/split}}
{{~#split @root.data.AmmoID ','}}
	{{~#each .}}
		{{~set 'cID' this}}
		{{~set 'cMax' (lookup @root.data.AmmoMaxList @index)}}
		{{~set 'cP' 0 }}
		{{~#scroll 13 1}}
			{{~#itemlist @root.E.S.Items @root.data.cID}}
				{{~#math (calc count '/' @root.Data.cMax) '*' 100}}{{~set 'cP' .}}{{/math}}
				{{~#test @root.Data.cP leq '50'}}{{~set 'c1' 'D11'}}{{~set 'c2' '300'}}{{/test}}
				{{~#test @root.Data.cP in '50-75'}}{{~set 'c1' 'B40'}}{{~set 'c2' '310'}}{{/test}}
				{{~#test @root.Data.cP in '75-90'}}{{~set 'c1' 'DA1'}}{{~set 'c2' '220'}}{{/test}}
				{{~#test @root.Data.cP geq '90'}}{{~set 'c1' '1D1'}}{{~set 'c2' '030'}}{{/test}}
<pos=10>{{count}} / {{@root.data.cMax}}</pos><pos=110>{{i18n key}}</pos>
<pos=5>{{~concat '<color=#' @root.Data.c1 '>'}}{{bar @root.Data.cP 0 100 40 '▒' (concat '<color=#' @root.Data.c2 '>░</color>')}}</color></pos>
			{{/itemlist}}
		{{/scroll}}
	{{/each}}
{{/split}}
