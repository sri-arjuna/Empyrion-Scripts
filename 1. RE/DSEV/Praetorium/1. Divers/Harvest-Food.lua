{{#blocks E.S  23 131 9 13 131 16}}
	{{~#each .}}
{{Id}} {{i18n Id}} 
X: {{~Position.X}} // Y: {{~Position.Y}} // Z:{{~Position.Z}}
--
	{{/each}}
	{{~#harvest @root.E.S . 'Fridge Farm Food' 15 131 17 false}}
Harvest: 
{{i18n Id}}➔ {{~i18n ChildOnHarvestId}} get {{DropOnHarvestCount}}: {{~i18n DropOnHarvestId}}
--
	{{/harvest}}
{{/blocks}}