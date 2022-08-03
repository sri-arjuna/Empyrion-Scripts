-- Description:
-- 	Refill current structure with Fuel, O2 and Pentaxid, using items found in boxes containing "Reserve" and/or "ReFill"
-- 	Feel free to remove either on of the possible box names, to limit the script to exacly one box.
--
-- Requires:
-- * Script LCD:		Script:Refill
-- * Output LCD:		Refill
-- * Output Dimension:	1x1
-- ------------------------------------------------------
{{#items E.S '*Reserve*;*ReFill*;Box-Energie-Output'}}
{{#fill this @root.E.S 'Oxygen' 100}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=orange>Fuel</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/fill}}
{{#fill this @root.E.S 'Fuel' 80}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=orange>Fuel</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/fill}}
{{#fill this @root.E.S 'Pentaxid' 50}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=orange>Fuel</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>=</color> {{Destination}}</pos>
{{/fill}}
{{/items}}