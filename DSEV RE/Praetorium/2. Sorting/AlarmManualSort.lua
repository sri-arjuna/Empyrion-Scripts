{{#test (calc @root.CycleCounter '%' 11) eq 0}}
	{{setswitch @root.E.S 'sw_AlarmManualSort' 'False'}}{{/setswitch}}
	{{Items E.S 'Box Manual Sort'}}
		{{test count geq 1}} Has Items
			{{setswitch @root.E.S 'sw_AlarmManualSort' 'True'}}{{/setswitch}}
		{{/test}}
	{{/Items}}
{{/test}}



-- -----------------------------

{{Items E.S 'Box Manual Sort'}}
	{{test count geq 1}} Has Items
		{{setswitch @root.E.S 'sw_AlarmManualSort' 'True'}}{{/setswitch}}
	{{/test}}
	{{test count le 1}}Empty
		{{setswitch @root.E.S 'sw_AlarmManualSort' 'False'}}{{/setswitch}}
	{{/test}}
{{/Items}}

-- -----------------------------
-- Orginal

{{Items E.S 'Box Manual Sort'}}
{{test count geq 1}} Has Items
{{setswitch @root.E.S 'sw_AlarmManualSort' 'True'}}{{/setswitch}}
{{else}}Empty
{{setswitch @root.E.S 'sw_AlarmManualSort' 'False'}}{{/setswitch}}
{{/test}}
{{/Items}}