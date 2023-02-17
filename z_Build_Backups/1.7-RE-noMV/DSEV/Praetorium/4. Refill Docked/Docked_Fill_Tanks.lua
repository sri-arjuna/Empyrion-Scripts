-- -------------------------------------------------------
-- Description:		Fills tanks with O2, Power and Pentaxid -- Vessel MUST be powered OFF!
-- Requires:
-- * Switch: 		sw_Docked_Refill
-- * Script LCD:	Script:[+12]DockAutoFuel
-- * Output LCD:	DockAutoFuel
-- * Box Source:	Box Power Output
-- -------------------------------------------------------
{{~set 'LimitToType' 'SV,HV,CV'}} 
{{~#each @root.E.S.DockedE}}
{{~set 'Ship' Name}}
{{~#if S.IsPowerd}} 
 {{datetime 'HH:mm:ss'}} <pos=55>| <color=red>Refill <sprite=3></color></pos><pos=105>| </pos><pos=145>| <color=red>Require Power Off! <sprite=25></color></pos><pos=320>| <sprite=3> {{Name}}</pos>
{{else}}
	{{~#test EntityType in @root.Data.LimitToType}}
	{{~set 'Ship' Name}}
		{{~#items @root.E.S 'Box Power Output'}}
		{{~set 'Itemname' Name}}
		{{~#test id in 4314,4335,4421,4342,4176}}
			{{~#test Count ge 1000}}
{{~#fill ../this ../../../S 'Oxygen' 100}}
 {{datetime 'HH:mm:ss'}} | <color=red>Refill</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| {{Source}}<color=red>❱</color> {{@root.data.Ship}}</pos>
{{/fill}}
{{~#fill ../this ../../../S 'Fuel' 100}}
 {{datetime 'HH:mm:ss'}} | <color=red>Refill</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| {{Source}}<color=red>❱</color> {{@root.data.Ship}}</pos>
{{/fill}}
{{~#fill ../this ../../../S 'Pentaxid' 100}}
 {{datetime 'HH:mm:ss'}} | <color=red>Refill</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| {{Source}}<color=red>❱</color> {{@root.data.Ship}}</pos>
{{/fill}}
			{{/test}}
			{{/test}}
		{{/test}}
		{{/items}}
	{{/each}}
	{{/test}}
{{/if}}
{{/each}}