-- -------------------------------------------------------
-- Moves all items from a docked vessel within a box named Cargo*, Loot* or Stuff* to the Root having a container "Drop Box"
-- Toggle-able by switch-lever
-- Written by Sephrajin 2019-2022
-- -------------------------------------------------------
-- Description:		This switch toggles wether auto sort is enabled on this CV/BA, and if docked vessels are scanned for cargo boxes to move items from.
-- Requires:
-- * Switch: 		sw_GetLoot
-- * Script LCD:	Script:SwitchGetLoot
-- * Output LCD:	SwitchGetLoot
-- * Boxes Src:		Loot*, Stuff*
-- * Boxes Trgt:	"Box Drop*"
-- -------------------------------------------------------
<pos=8>◜</pos><pos=180>◝</pos>
<align=center><i><size=150%><color=white><u></color>AutoMove Loot</u></size></i>
</align><pos=8>◟</pos><pos=180>◞</pos>
{{#getswitch @root.E.S 'sw_GetLoot'}}
{{#if SwitchState}}

<indent=10><color=green>Scanning for boxes starting with 'Loot' or 'Stuff' in docked vessels to be moved to local structure ('Box Drop').</color></indent>
 
 
 
 
Scanning for docked Vessels:
{{scroll 5 1}}
{{~#each @root.E.S.DockedE}}
<indent=6>◉ <color=grey>{{Name}}</color></indent>
{{/items}}
{{/each}}
{{/scroll}}
{{else}}
 
<color=red>Switch this lever to automaticly move loot from your docked vessels to this structure (Container: 'Loot' or 'Stuff').</color>
 
{{/if}}{{/getswitch}}