-- 
-- ----------------------

{{#test (calc @root.CycleCounter '%' 5) eq 0}}
	{{~#items E.S 'Drop Box'}}
				{{~#test Id 'in' '4316,4297-4301,4317-4318,4332,4345,4359,4365,5923,'}}
{{~#move . @root.E.S 'Ores Input'}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
	{{/items}}
{{/test}}

-- -----------------------

