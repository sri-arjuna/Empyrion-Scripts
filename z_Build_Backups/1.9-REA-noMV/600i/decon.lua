<size=250%><sprite name="Engineering_Bar2"></size>
<line-height=-42>
</line-height><align=right>
<size=-1><b><color=grey>
 Automatic
 Disassembly</color></b></size></align><line-height=1>
{{~set 'IDs' @root.E.Id}}<line-height=10>
{{~#each E.S.DockedE}}{{~set 'IDs' (concat @root.Data.IDs ',' Id)}}{{/each}}
<size=75%>{{#scroll 16 1 4}}
{{~#entitiesbyname '*'}}
	{{~#each .}}
		{{~#test Id in @root.Data.IDs}}{{else}}
<color=white><u></color><color=red>{{Name}}</color></u> {{EntityType}}
{{recycle . '600i-Loot Decon-*'}}  min: X:
	{{~MinPos.X}} Y:{{~MinPos.Y}} Z:{{~MinPos.Z}}
	  max: X:{{MaxPos.X}} Y:
	{{~MaxPos.Y}} Z:{{MaxPos.Z}}
	  current X:{{X}} Y:{{Y}} Z:{{Z}}
	  Blocks: Total:{{TotalBlocks}}  Checked:
	{{~CheckedBlocks}}  RemovedBlocks:
	{{~RemovedBlocks}}
{{/recycle}}
{{deconstruct . '600i-Loot Decon-*'}}  min: X:
	{{~MinPos.X}} Y:{{~MinPos.Y}} Z:{{~MinPos.Z}}
	  max: X:{{MaxPos.X}} Y:
	{{~MaxPos.Y}} Z:{{MaxPos.Z}}
	  current X:{{X}} Y:{{Y}} Z:{{Z}}
	  Blocks: Total:{{TotalBlocks}}  Checked:
	{{~CheckedBlocks}}  RemovedBlocks:
	{{~RemovedBlocks}}
{{/deconstruct}}
		{{/test}}
	{{/each}}
{{/entitiesbyname}}
{{/scroll}}
</size>