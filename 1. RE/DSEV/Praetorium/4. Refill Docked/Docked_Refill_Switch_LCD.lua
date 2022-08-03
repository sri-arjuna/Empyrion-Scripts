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
-- * Script LCD:	Script:DockedReFill
-- * Output LCD:	Projector: DockedReFill (1x1, Font Color: YellowYellow)
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