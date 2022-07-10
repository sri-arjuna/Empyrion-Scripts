-- -------------------------------------------------------
-- Description:		Moves 5x O2 bottles, Fusion Cores & 10x refined Pentaxid to the Reserves Box of a docked HV or SV
-- Requires:
-- * Switch: 		sw_Docked_Refill
-- * Script LCD:	Script:[+6]DockAutoReservesSV
-- * Output LCD:	DockAutoReservesSV
-- * Boxes Src:		Power Output
-- * Boxes Trgt:	Reserves
-- -------------------------------------------------------
{{~set 'LimitToType' 'SV,HV'}}
{{~#each @root.E.S.DockedE}}
{{~#test EntityType in @root.Data.LimitToType}}
{{~set 'Ship' Name}}
{{~#items @root.E.S 'Power Output'}}
{{~set 'Itemname' Name}}
{{~#test Id in '4176,4421'}}
{{~#test Count ge 100}}
{{~#move ../this ../../../S 'Reserve*' 4}}
 {{datetime 'HH:mm:ss'}} | <color=purple>Reserve</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| <color=red>❱</color> {{@root.data.Ship}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{~#test Id in '4342'}}
{{~#test Count ge 100}}
{{~#move ../this ../../../S 'Reserve*' 18}}
 {{datetime 'HH:mm:ss'}} | <color=purple>Reserve</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| <color=red>❱</color> {{@root.data.Ship}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/items}}
{{/test}}
{{/each}}