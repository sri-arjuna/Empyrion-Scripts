{{~#devices E.S 'i-*;c-*'}}{{#each .}}{{~split CustomName '-'}}{{~set 'CN' .1}}{{/split}}{{~#devices @root.E.S (concat CustomName 'y')}}{{~#each .}}{{~#settextblock .}}<size=3><align=center><color=red>{{~islocked @root.E.S ../../../.}}<sprite=4>-= Locked =-<sprite=4>{{/islocked}}</color></align></size><align=center><color=white><u></color>{{@root.data.CN}}</u></align>
					{{#items @root.E.S ../../../CustomName}}
<size=3><pos=1>{{i18n key}}</pos> <pos=70>{{~math}}{{format Count '{0,6:N0}'}}{{/math}}</size></pos>
					{{/items}}
				{{/settextblock}}
			{{/each}}
		{{/devices}}
	{{/each}} 
{{/devices}}