{{! Growing Plant Monitor v.1 by swg}}
{{! all Growing Light must be named }}
{{! change the wildcard if necessary}}
{{devices  E.S '*'}}
{{#each .}}
{{test .Id eq 564}}
{{CustomName}}:<indent=5>
{{set 'GrowLightOn' false}}
{{math Position.Y '-' 1}}
{{#each '+*-'}}
{{math ../../Position.X . 1}}
{{#each '+*-'}}
{{math ../../../../Position.Z . 1}}
{{block @root.E.S ../../ ../../../../ .}}
{{test .id 'in' '593,599,602,707,643,611,467,
1169,709,1173,1177,1181,1369,1529,1533,
1599,1603,2163,2167,2171,1329,0'}}
<color=orange>{{else}}
{{set 'GrowLightOn' true}}
<color=green>{{/test}}
{{~test .id 'in' '0'}}◌
{{~else}}◉ {{i18n .id}}
{{~/test}}</color>
{{~/block}}
{{/math}}
{{/each}}
{{/math}}
{{/each}}
{{/math}}</indent>
{{setactive . @root.Data.GrowLightOn}}
{{/test}}
{{/each}}
{{/devices}}