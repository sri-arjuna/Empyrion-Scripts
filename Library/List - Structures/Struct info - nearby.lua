-- -------------------------------
-- LCD Input:		Script:StructList*
-- Project Output:	StructList1
--			Width:	1.5
--			Height:	1.5 - 3.0
-- Note:
--		You can change the topline "LimitToType" and remove "BA," if you only want have vessels shown
--		Changing FontSize BREAKS the visual output!
-- By:	ShadowViper -- https://empyriononline.com/threads/mod-ext-empyrion-scripting-scripts.92458/#post-390305
-- -------------------------------
{{~set 'LimitToType' 'BA,SV,HV,CV'}}
{{~fontsize 7}}
{{~set 'E' '<indent=275>║</indent>'}}
{{~set 'L' (concat '║' @root.data.E)}}
{{~#each E.S.DockedE}}{{~set 'D' (concat @root.Data.D Id ',')}}{{/each}}<line-height=4><color=#FFF>{{~#scroll 102 2 5}}{{~#entitiesbyname '*'}}{{~#sortedeach . 'Distance'}}{{~#test Id neq @root.E.Id}}{{~#test EntityType in @root.Data.LimitToType}}
╔{{~bar 1 0 1  60 '═'}}╗
{{@root.data.L}}
║ {{Name}} <indent=85%>[<color=#{{~#test EntityType eq 'BA'}}F00{{/test}}{{~#test EntityType eq 'CV'}}F0F{{/test}}{{~#test EntityType eq 'SV'}}FA0{{/test}}{{~#test EntityType eq 'HV'}}00F{{/test}}>{{EntityType}}</color>]</indent>{{@root.data.E}}
╟{{bar 1 0 1  60 '─'}}{{@root.data.E}}
{{@root.data.L}}{{@root.data.L}}
║ <color=#{{#if S.IsPowerd}}1F1{{else}}00220060{{/if}}>Powered</color> {{@root.data.E}}
{{~use S.FuelTank}}
<indent=50%><color=#F11>☢ {{bar Content 0 Capacity 9 '▒' '<color=#300>░</color>'}}<indent=80%><size=5><b><color=#FFF>{{~math Content '/' Capacity}}{{~format . '{0,8:P2}'}}{{~/math}}</color></b></size></indent></color></indent>
{{/use}}{{@root.data.L}}
║ <color=#{{#test Id in @root.data.D}}1F1{{else}}00220060{{/test}}>Docked</color> {{@root.data.E}}
{{~use S.OxygenTank}}
<indent=50%><color=#11F>✇ {{bar  Content 0 Capacity 9 '▒' '<color=#003>░</color>'}}<indent=80%><size=5><b><color=#FFF>{{~math Content '/' Capacity}}{{~format . '{0,8:P2}'}}{{~/math}}</color></b></size></indent></color></indent>
{{/use}}{{@root.data.L}}
║ {{split (distance Pos @root.E.Pos) ","}}{{.0}}m{{/split}} {{@root.data.E}}
{{~use S.PentaxidTank}}
<indent=50%><color=#F1F>⚛ {{bar  Content 0 Capacity 9 '▒' '<color=#303>░</color>'}}<indent=80%><size=5><b><color=#FFF>{{~math Content '/' Capacity}}{{~format . '{0,8:P2}'}}{{~/math}}</color></b></size></indent></color></indent>
{{/use}}{{@root.data.L}}
╚{{bar 1 0 1  60 '═'}}╝
{{/test}}{{/test}}{{~/sortedeach}}{{~/entitiesbyname}}{{/scroll}}
</color></line-height>