-- -------------------------------------------------------
-- Description:		Moves items from vessel containers to BA or CV. (Does NOT work from CV to BA!!)
-- Requires:
-- * Switch: 		sw_AutoSort (Signal Power: Follow)
-- * Script LCD:	Script:[+12]AutoMove
-- * Output LCD:	AutoMove
-- * Boxes Src:		Cargo*, Loot*, Stuff*
-- * Boxes Trgt:	Drop Box
-- -------------------------------------------------------
{{~#each @root.E.S.DockedE}}
{{#items S 'Loot*;Stuff*'}}
{{~set 'Itemname' Name}}
{{~#move this @root.E.S 'Box Drop*'}}
 {{datetime 'HH:mm:ss'}} | <color=orange>Move</color><pos=105>| {{Count}}</pos><pos=145>| {{@root.data.Itemname}}</pos><pos=320>| {{Destination}} <color=green>❰</color> {{SourceE.Name}}</pos>
{{/move}}
{{/items}}
{{/each}}