-- Description:
-- 	Refill current structure with Fuel, O2 and Pentaxid, using items found in boxes containing "Reserve" and/or "ReFill"
-- 	Feel free to remove either on of the possible box names, to limit the script to exacly one box.
--
-- Requires:
-- * Script LCD:		Script:Refill
-- * Output LCD:		Refill
-- * Output Dimension:	1x1
-- ------------------------------------------------------


{{#items E.S '*Reserve*;*ReFill*'}}
{{#fill this @root.E.S 'Oxygen' 50}}
{{datetime}}
{{format Count '{0,5}'}} : {{i18n Id}}
-----------------------------
{{/fill}}
{{#fill this @root.E.S 'Fuel' 80}}
{{datetime}}
{{format Count '{0,5}'}} : {{i18n Id}}
-----------------------------
{{/fill}}
{{#fill this @root.E.S 'Pentaxid' 80}}
{{datetime}}
{{format Count '{0,5}'}} : {{i18n Id}}
-----------------------------
{{/fill}}
{{/items}}