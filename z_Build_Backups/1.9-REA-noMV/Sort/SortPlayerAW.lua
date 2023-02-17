{{#test (calc @root.CycleCounter '%' 7) eq 0}}
	{{~#items E.S 'Drop Box'}}
	{{~#devices @root.E.S 'pma-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.ArmorMod @IDs.Armor '4717-4726,4746-4752,7206-7211,7228-7232,4698,4701,7204,7223')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
		{{~#devices @root.E.S 'pmw-*'}}
		{{~#each .}} 
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}{{/split}}
				{{~#test ../../../../Id 'in' (concat @Ids.WeaponPlayer ',4127,4134,4136,4138,4139,4145,4896,5657,5847,7212,7217,7226,7227,7261,5846,7215,7236,7260,')}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
	{{/devices}}
	{{/items}}
{{/test}}

-Advanced Multitool-4127,4134,4136,4138,4139,4145,4896,5657,5847,7212,7217,7226,7227,7261

-Advanced Multitool-4127
-Energy Pulse Rifle-4134
-Enhanced Laser Drill-4136
-Flamethrower-4138
-Plasma Blaster-4139
-Assault Rifle (Debug)-4145
-Zirax Combat Rifle-4896
-M40 Grenade Launcher-5657
-DC-17 Heavy Laser Pistol-5847
-Incendiary Minigun-7212
-Light Scout Rifle-7217
-Light Railgun Rifle-7226
-Light Ion Blaster-7227
-X-Corp PR-65A Plasma Rifle-7261

-Elite Submachine Gun-




-Heavy Armor-4698
-Advanced Heavy Armor-4701
-Augmented Light Armor-7204
-Abyss Walker Armor-7223

-Heavy Armor-4698,4701,7204,7223
