{{bgcolor '00'}}<size=250%><sprite name="Engineering_Bar2"></size>
<line-height=-20px>
</line-height><align=right>
<size=-1><b><color=grey>
 Automatische
 Demontour</color></b></size></align>
<line-height=1>
<line-height=4>
{{~set 'IDs' @root.E.Id}}
{{~#each E.S.DockedE}}
{{~set 'IDs' (concat @root.Data.IDs ',' Id)}}
{{/each}}
<size=50%>
{{#scroll 24 1 4}}
{{~#entitiesbyname '*'}}
{{~#each .}}
{{~#test Id in @root.Data.IDs}}{{else}}
<color=white><u></color><color=red>{{Name}}</color></u> {{EntityType}}
{{recycle . 'R-Abbau'}}  min: X:
{{~MinPos.X}} Y:{{~MinPos.Y}} Z:{{~MinPos.Z}}
  max: X:{{MaxPos.X}} Y:
{{~MaxPos.Y}} Z:{{MaxPos.Z}}
  current X:{{X}} Y:{{Y}} Z:{{Z}}
  Blocks: Total:{{TotalBlocks}}  Checked:
{{~CheckedBlocks}}  RemovedBlocks:
{{~RemovedBlocks}}
{{/recycle}}
{{deconstruct . 'R-Abbau'}}  min: X:
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