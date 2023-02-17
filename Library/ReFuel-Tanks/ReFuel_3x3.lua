-- -------------------------------
-- Requires:
--          * LCD:            Script:[+18]ReFuel
--          * LCD/Projector:  ReFuel
--          * Dimension:      3x3
--          * Box:            *Reserve*;*ReFuel*;*Power Output*  (any 1 of these 3 strings will do)
-- Modified by Sephrajin
-- -----------------------------------------

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