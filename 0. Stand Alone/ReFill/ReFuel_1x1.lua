-- -------------------------------
-- Requires:
--          * LCD:            Script:[+18]ReFuel
--          * LCD/Projector:  ReFuel
--          * Dimension:      1x1
--          * Box:            *Reserve*;*ReFuel*;*Power Output*  (any 1 of these 3 strings will do)
-- Modified by Sephrajin
-- -----------------------------------------

{{~#test (calc @root.CycleCounter '%' 13) eq 0}}
	{{items E.S '*Reserve*;*ReFill*;*Power Output*'}}
{{~#fill this @root.E.S 'Oxygen' 50}}
<size=+2> </size>
<align=center><indent=5>{{datetime}}
<color=blue>{{i18n Id}}</color> - {{format Count '{0,5}'}}/{{~#itemlist @root.E.S.Items '4176'}}{{count}}{{/itemlist}}</indent>
{{bar 1 0 1 45 '-'}}</align>
{{/fill}}
{{~#fill this @root.E.S 'Fuel' 80}}
 <size=+2> </size>
<align=center><indent=5>{{datetime}}
<color=red>{{i18n Id}}</color> - {{format Count '{0,5}'}}/{{~#itemlist @root.E.S.Items '4421'}}{{count}}{{/itemlist}}</indent>
{{bar 1 0 1 45 '-'}}</align>
{{/fill}}
{{~#fill this @root.E.S 'Pentaxid' 80}}
 <size=+2> </size>
<align=center><indent=5>{{datetime}}
<color=purple>{{i18n Id}}</color> - {{format Count '{0,5}'}}/{{~#itemlist @root.E.S.Items '4342'}}{{count}}{{/itemlist}}</indent>
{{bar 1 0 1 45 '-'}}</align>
{{/fill}}
	{{/items}}
{{/test}}