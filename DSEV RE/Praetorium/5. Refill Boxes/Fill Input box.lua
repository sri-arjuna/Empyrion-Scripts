{{#test (calc @root.CycleCounter '%' 30) eq 0}}
{{#devicesoftype E.S 'Container'}}
{{#each .}}
{{#if CustomName}}
{{#items @root.E.S CustomName}}
{{#test Id in '4350,4375,4374,4357,4325,4401,4340,4338,4339,4331,4328,4329,4314,4307,4308,4315,4303,4304,4311,4360,4361,4363,4364,4306,4310,4312,4343,4313,4305,4330,4309,4334,4337,4366,4367,4346,5097'}}
{{move this @root.E.S 'Box Everything Input' 1000 }}
Nach {{Destination}} {{format Count '{0,5}'}} : {{i18n Id}} : lange list
{{/move}}
{{/test}}
{{#test Id in '4351-4356,4378-4381,5099,5108,5706-5708,7298-7303,7310,7312,7313,7320,7330,7341'}}
{{move this @root.E.S 'Box Everything Input' 200}}
Nach {{Destination}} {{format Count '{0,5}'}} : {{i18n Id}} : 200
{{/move}}
{{/test}}
{{#test Id 'in' @Ids.Ingot}}
{{move this @root.E.S 'Box Everything Input' 2000}}
Nach {{Destination}} {{format Count '{0,5}'}} : {{i18n Id}}
{{/move}}
{{/test}}
{{#test id in '4341,4444,4358,4377'}}
{{move this @root.E.S 'Box Everything Input' 2000}}
Nach {{Destination}} {{format Count '{0,5}'}} : {{i18n Id}} : 4er
{{/move}}
{{/test}}
{{/items}}
{{/if}}
{{/each}}
{{/devicesoftype}}
{{fontsize 4}}
{{#each .}}
{{/if}}
{{/each}} 
{{/devicesoftype}}
{{/test}}