-- -------------------------------------------------------
-- Description:		Moves 10 of MRE, Water bottle and every medic item to the target fridge, but 30 bandages.
-- Requires:
-- * Switch: 		sw_Docked_Refill
-- * Script LCD:	Script:[+20]DockAutoMedic
-- * Output LCD:	DockAutoMedic
-- * Fridge Src:	Medic Output
-- * Fridge Trgt:	Medic* (Medics, Medic & Food)
-- -------------------------------------------------------
{{~set 'LimitToType' 'SV,HV,CV'}}
{{~#each @root.E.S.DockedE}}
{{~set 'Ship' Name}}
{{#items @root.E.S 'Medic Output,Food Output'}}
{{~set 'Itemname' Name}}
{{~#test Id in '4442,4403,4404,4423,4425,4430,4433,4441,4464,4474-4476,4478,4483-4489,5704,5705,5715'}}
{{~#test Count ge 100}}
{{~#move ../this ../../../S 'Medic*' 10}}
 {{datetime 'HH:mm:ss'}} | <color=green>Medic</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| <color=red>❱</color> {{@root.data.Ship}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{#test Id in '4437'}}
{{#test Count ge 100}}
{{~#move ../this ../../../S 'Medic*' 30}}
 {{datetime 'HH:mm:ss'}} | <color=green>Medic</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| <color=red>❱</color> {{@root.data.Ship}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/items}}
{{/each}}