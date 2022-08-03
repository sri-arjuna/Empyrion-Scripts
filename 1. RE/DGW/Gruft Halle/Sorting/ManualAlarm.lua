{{#test (calc @root.CycleCounter '%' 11) eq 0}}
	{{setswitch @root.E.S 'sw_ManualAlarm' 'False'}}{{/setswitch}}
	{{Items E.S 'Box Manual Sort'}}
		{{test count geq 1}}
			{{setswitch @root.E.S 'sw_ManualAlarm' 'True'}}{{/setswitch}}
		{{/test}}
	{{/Items}}
{{/test}}