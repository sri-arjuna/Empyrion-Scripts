{{set 'Workbox' '[00ffaa]Box-Work In-640k'}}
{{#test (calc @root.CycleCounter '%' 3) eq 0}}
{{~scroll 18 1}}
{{#devicesoftype E.S 'Container'}}
	{{#each .}}
		{{~#if CustomName}}
				{{#items @root.E.S CustomName}}
				{{~#test Id in @IDs.Components}}
{{move this @root.E.S @root.data.Workbox 1000 }}
 {{Source}}>{{Destination}} {{format Count '{0,5}'}} : {{i18n Id}}
{{/move}}
				{{/test}}
				{{~#test Id in (concat @IDs.EdenComponents @IDs.WeaponPlayerUpgrades)}}
{{move this @root.E.S @root.data.Workbox 200}}
 {{Source}}>{{Destination}} {{format Count '{0,5}'}} : {{i18n Id}}
{{/move}}
				{{/test}}
				{{~#test Id 'in' @Ids.Ingot}}
{{move this @root.E.S @root.data.Workbox 2000}}
 {{Source}}>{{Destination}} {{format Count '{0,5}'}} : {{i18n Id}}
{{/move}}
				{{/test}}
				{{~#test id in '4341,4444,4358,4377,4296'}}
{{move this @root.E.S @root.data.Workbox 2000}}
Penta, Prom, Water, Mag....
{{/move}}
				{{/test}}
				{{/items}}
		{{/if}}
	{{/each}} 
{{/devicesoftype}}
{{/scroll}}
{{/test}}