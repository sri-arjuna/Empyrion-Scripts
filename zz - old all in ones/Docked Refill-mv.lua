-- -------------------------------------------------------
-- Refill docked entities, according to Mass/Volume
-- Toggle-able by switch-lever
-- Written by Sephrajin 2019-2022
-- -------------------------------------------------------
-- Requires:
-- Info: 	This switch triggers wether docked vessels will be refuelled (O2,Power,Pentaxid) and their specific boxes (Reserves, Medics) as well.
-- 			The scripts will handle CV differently from HV,SV as their box size and needs are different, however, for Medics (incl MRE) they will treat all the same.
-- 			"Log" output is optimized for english, I play on a german speaking server.
-- * Switch: 		sw_Docked_Refill (Place this output projector above the switch)
-- * Script LCD:	Script:ReFillDocked
-- * Output LCD:	Projector: ReFillDocked (Font Color: YellowYellow)
-- * Extra:			1 Window 1x1 with Border
-- -------------------------------------------------------
<pos=8>◜</pos><pos=186>◝</pos>
<align=center><i><size=150%><color=white><u></color>AutoFill</u></size></i>
</align><pos=8>◟</pos><pos=186>◞</pos>
{{#getswitch @root.E.S 'sw_Docked_ReFill'}}
{{#if SwitchState}}

<indent=10><color=green>Scanning for boxes with the name 'Reserves' and fridges starting with 'Medic*' in docked vessels to be filled with their according content.</color></indent>
 
 
 
 
<indent=8>Scanning:</indent>
{{scroll 5 1}}
{{~#each @root.E.S.DockedE}}
<indent=10>◉ <color=grey>{{Name}}</color></indent>
{{/items}}
{{/each}}
{{/scroll}}
{{else}}

<indent=10><color=red>Switch this lever to automaticly refill your 'Reserves' box and 'Medics & Food' fridge of your docked vessels.</color></indent>
 
 
 
 
 
<size=90%>
{{~set 'IDs' '4314,4335,4421,4342,4176'}}
{{~#itemlist @root.E.S.items @root.Data.IDs}}
{{#test count le 1000 }}
<indent=6>◉ <color=red>Missing: <color=#00cccc>{{Name}}</color> (<color=orange>{{Count}}</color>)</color></indent>
{{else}}
<indent=6>◉ <color=green>Plenty:</color> <color=#00cccc>{{Name}}</color></indent>
{{/test}}
{{/itemlist}}
</size>
{{/if}}{{/getswitch}}

-- -------------------------------------------------------
-- Assign the signal to the following 4 scripts LCD as Power: Follow
-- -------------------------------------------------------
-- Description:		Fills tanks with O2, Power and Pentaxid -- Vessel MUST be powered OFF!
-- Requires:
-- * Switch: 		sw_Docked_Refill
-- * Script LCD:	Script:[+12]DockAutoFuel
-- * Output LCD:	DockAutoFuel
-- * Box Source:	Power Output
-- -------------------------------------------------------
{{~set 'LimitToType' 'SV,HV,CV'}} 
{{~#each @root.E.S.DockedE}}
{{~set 'Ship' Name}}
{{~#if S.IsPowerd}} 
 {{datetime 'hh:mm:ss'}} <pos=55>| <color=red>Refill <sprite=3></color></pos><pos=105>| </pos><pos=145>| <color=red>Require Power Off! <sprite=25></color></pos><pos=320>| <sprite=3> {{Name}}</pos>
{{else}}
{{~#test EntityType in @root.Data.LimitToType}}
{{~set 'Ship' Name}}
{{~#items @root.E.S 'Power Output'}}
{{~set 'Itemname' Name}}
{{~#test id in 4314,4335,4421,4342,4176}}
{{~#test Count ge 1000}}
{{~#fill ../this ../../../S 'Oxygen' 100}}
 {{datetime 'HH:mm:ss'}} | <color=red>Refill</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| <color=red>❱</color> {{@root.data.Ship}}</pos>
{{/fill}}
{{~#fill ../this ../../../S 'Fuel' 100}}
 {{datetime 'HH:mm:ss'}} | <color=red>Refill</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| <color=red>❱</color> {{@root.data.Ship}}</pos>
{{/fill}}
{{~#fill ../this ../../../S 'Pentaxid' 100}}
 {{datetime 'HH:mm:ss'}} | <color=red>Refill</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| <color=red>❱</color> {{@root.data.Ship}}</pos>
{{/fill}}
{{/test}}
{{/test}}
{{/test}}
{{/items}}
{{/each}}
{{/test}}
{{/if}}
{{/each}}

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

-- -------------------------------------------------------
-- Description:		Moves 50x O2 bottles, Fusion Cores & 100x refined Pentaxid to the Reserves Box of a docked HV or SV
-- Requires:
-- * Switch: 		sw_Docked_Refill
-- * Script LCD:	Script:[+6]DockAutoReservesCV
-- * Output LCD:	DockAutoReservesCV
-- * Boxes Src:		Power Output
-- * Boxes Trgt:	Reserves
-- -------------------------------------------------------
{{~set 'LimitToType' 'CV'}}
{{~#each @root.E.S.DockedE}}
{{~#test EntityType in @root.Data.LimitToType}}
{{~set 'Ship' Name}}
{{~#items @root.E.S 'Power Output'}}
{{~set 'Itemname' Name}}
{{~#test Id in '4176,4421'}}
{{~#test Count ge 100}}
{{~#move ../this ../../../S 'Reserve*' 100}}
 {{datetime 'HH:mm:ss'}} | <color=purple>Reserve</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| <color=red>❱</color> {{@root.data.Ship}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{~#test Id in '4342'}}
{{~#test Count ge 100}}
{{~#move ../this ../../../S 'Reserve*' 100}}
 {{datetime 'HH:mm:ss'}} | <color=purple>Reserve</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| <color=red>❱</color> {{@root.data.Ship}}</pos>
{{/move}}
{{/test}}
{{/test}}
{{/items}}
{{/test}}
{{/each}}

-- -------------------------------------------------------
-- Description:		MegaLog, Collects all AutoDock* and AutoMove* scripts into a single output for display
-- Requires:
-- * Script LCD:		Script:[+]MegaLog
-- * Output Projector:	MegaLog (Width: 3.25 (output is 2 blocks) ; Height: 2.0 ; X/Y Offset: so it fits... for me -0.75 and -1.5)
-- 					
-- -------------------------------------------------------
<color=grey> Time <pos=55>| Type</pos><pos=105>| Count</pos><pos=145>| Object</pos><pos=320>| Direction Source/Target</pos></color>
{{~devices @root.E.S 'Log_*;AutoMove;DockAu*'}}
{{scroll 48 2}}
{{~#each .}}
{{~gettext .}}
{{.}}
{{~/gettext}}
{{/each}}
{{/scroll}}
{{~/devices}}
