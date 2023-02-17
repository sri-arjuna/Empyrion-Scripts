{{~#devicesoftype E.S 'Container'}}{{#each .}}{{~set 'BoxName' CustomName}}{{~#devices @root.E.S (concat CustomName 'y')}}{{~#each .}}{{~#settextblock .}}<size=3><align=center><color=red>{{~islocked @root.E.S ../../../.}}<sprite=4>-= Locked =-<sprite=4>{{/islocked}}</color></align></size><align=center><size=5><color=white><u></color>{{@root.data.BoxName}}</u></size></align>
					{{#items @root.E.S ../../../CustomName}}
						{{#scroll 15 1}}
<size=3><pos=1>{{i18n key}}</pos> <pos=70>{{~math}}{{format Count '{0,6:N0}'}}{{/math}}</size></pos>
						{{/scroll}}
					{{/items}}
				{{/settextblock}}
			{{/each}}
		{{/devices}}
	{{/each}} 
{{/devicesoftype}}