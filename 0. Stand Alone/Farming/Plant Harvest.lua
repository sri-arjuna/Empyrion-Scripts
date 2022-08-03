{{#blocks E.S  22 128 -51 72 128 -68}}
	{{~#each .}}
{{Id}} {{i18n Id}} 
X: {{~Position.X}} // Y: {{~Position.Y}} // Z:{{~Position.Z}}
--
	{{/each}}
	{{~#harvest @root.E.S . 'Essen Ernte' 22 128 -68 false}}
Harvest: 
{{i18n Id}}➔ {{~i18n ChildOnHarvestId}} get {{DropOnHarvestCount}}: {{~i18n DropOnHarvestId}}
--
	{{/harvest}}
{{/blocks}}