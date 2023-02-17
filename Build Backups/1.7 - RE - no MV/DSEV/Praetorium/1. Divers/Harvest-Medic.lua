{{#blocks E.S  23 125 -3 13 125 16}}
	{{~#each .}}
{{Id}} {{i18n Id}} 
X: {{~Position.X}} // Y: {{~Position.Y}} // Z:{{~Position.Z}}
--
	{{/each}}
	{{~#harvest @root.E.S . 'Fridge Farm Medic' 21 125 17 false}}
Harvest: 
{{i18n Id}}➔ {{~i18n ChildOnHarvestId}} get {{DropOnHarvestCount}}: {{~i18n DropOnHarvestId}}
--
	{{/harvest}}
{{/blocks}}