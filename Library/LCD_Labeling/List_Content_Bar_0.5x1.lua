{{~#devices E.S 'i-*;c-*'}}{{#each .}}{{split CustomName '-'}}{{~set 'CN' .1}}{{/split}}{{~#devices @root.E.S (concat CustomName 'x')}}{{~#each .}}{{~#settextblock .}}<size=3><align=center><color=red>{{~islocked @root.E.S ../../../.}}<sprite=4>-= Locked =-<sprite=4>{{/islocked}}</color></align></size>
<align=center><size=5><color=white><u></color>{{@root.data.CN}}</u></size></align><size=2>
</size>					{{#items @root.E.S ../../../CustomName}}{{~set 'T' 0}}{{~set 'P' 0}}{{~set 'Vol' 16000}}{{~set 'Load' 0}}
<size=3><pos=1>{{i18n key}}</pos> <pos=70>{{~math}}{{format Count '{0,6:N0}'}}{{/math}}</size></pos>{{~#math @root.Data.T '+' (calc (configattr Id 'Volume') '*' Count)}}{{~set 'T' .}}{{~/math}}{{~#math (calc @root.Data.T '/' @root.data.Vol) '*' 100}}{{~set 'P' .}}{{/math}}{{~#test @root.Data.P leq '50'}}{{set 'c1' '1D1'}}{{set 'c2' '030'}}{{/test}}{{~#test @root.Data.P in '50-75'}}{{set 'c1' 'DA1'}}{{set 'c2' '220'}}{{/test}}{{~#test @root.Data.P in '75-90'}}{{set 'c1' 'B40'}}{{set 'c2' '310'}}{{/test}}{{~#test @root.Data.P geq '90'}}{{set 'c1' 'D11'}}{{set 'c2' '300'}}{{/test}}
{{bar @root.Data.T 0 @root.data.Vol 20 '▒' (concat '<color=#' @root.Data.c2 '>░</color>')}}
					{{/items}}
				{{/settextblock}}
			{{/each}}
		{{/devices}}
	{{/each}} 
{{/devices}}