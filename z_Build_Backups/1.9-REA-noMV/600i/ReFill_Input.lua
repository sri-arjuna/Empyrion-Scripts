-- ------------------------------
-- Desciption:      Re fills the input box for the constructors with all required materials.
--
--      LCD:        Script:[+16]SortRefillInput
--      Output LCD: SortRefillInput
--      Dimension:  3x3
--
--   Manual Changes:
--        You can change the set "TargetBox" to the boxname of your preference.
--        You can also change the 18 of the scroll command or remove that command alltogether. (mind the closing tag)
--
-- by OnlyJens83 and Sephrajin
-- -------------------------------

{{~#test (calc @root.CycleCounter '%' 3) eq 0}}
{{~set 'TargetBox' '[00ffaa]Box-Work In-640k'}}
	{{~scroll 18 1}}
	{{~#devicesoftype E.S 'Container'}}
		{{~#each .}}
			{{~#if CustomName}}
				{{~#items @root.E.S CustomName}}
				{{~#test Id 'in' (concat @Ids.Ingot @IDs.Components ',')}}
{{~#move this @root.E.S @root.data.TargetBox 2000}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=green>Refill</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{~#test Id in (concat @IDs.EdenComponents ',')}}
{{~#move this @root.E.S @root.data.TargetBox 1000 }}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=green>Refill</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{~#test Id in (concat @IDs.WeaponPlayerUpgrades ',')}}
{{~#move this @root.E.S @root.data.TargetBox 200}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=green>Refill</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
				{{/items}}
			{{/if}}
		{{/each}} 
	{{/devicesoftype}}
	{{/scroll}}
{{/test}}
