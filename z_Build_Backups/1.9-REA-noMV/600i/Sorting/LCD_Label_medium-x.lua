{{~#devices E.S 'bl-*;bs-*;dl-*;ds-*;*div-*'}}{{~#each .}}{{~#split CustomName '-'}}{{~set 'CN' .1}}{{/split}}{{~#devices @root.E.S (concat CustomName 'x')}}{{~#each .}}{{~#settextblock .}}<size=3><align=center><color=red>{{~islocked @root.E.S ../../../.}}<sprite=4>-= Locked =-<sprite=4>{{/islocked}}</color></align></size>
<align=center><size=5><color=white><u></color>{{@root.data.CN}}</u></size></align><size=2>
</size>{{#items @root.E.S ../../../CustomName}}<size=3><pos=1>{{i18n key}}</pos> <pos=70>{{~math}}{{format Count '{0,6:N0}'}}{{/math}}</size></pos>
					{{/items}}
				{{/settextblock}}
			{{/each}}
		{{/devices}}
	{{/each}} 
{{/devices}}