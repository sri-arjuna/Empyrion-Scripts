{{#devicesoftype E.S 'Container'}}
{{#each .}}
{{#devices @root.E.S (concat CustomName 'y')}}
{{#each .}}
{{#settextblock .}}
<size=3><align=center><color=red>{{~islocked @root.E.S ../../../.}}<sprite=4>-= Locked =-<sprite=4>{{/
islocked}}</color></align></size>
{{#items @root.E.S ../../../CustomName}}
{{~#scroll 7 1}}
<size=4><pos=1>{{i18n key}}</pos> <pos=70>{{~math}}{{format Count '{0,6:N0}'}}{{/math}}</size></pos>
{{/scroll}}
{{/items}}
{{/settextblock}}
{{/each}}
{{/devices}}
{{/if}}
{{/each}} 
{{/devicesoftype}}