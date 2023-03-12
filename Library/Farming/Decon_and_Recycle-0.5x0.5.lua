-- Original (maybe: https://steamcommunity.com/sharedfiles/filedetails/?id=2834057918)
--

<size=150%><sprite name="Engineering_Bar2"></size>
<line-height=-17px>
</line-height><align=right>
<size=-3><b><color=grey>
 
 Automatic
 disassembly</color></b></size></align>
{{~set 'IDs' @root.E.Id}}
{{~#each E.S.DockedE}}
{{~set 'IDs' (concat @root.Data.IDs ',' Id)}}
{{/each}}

<size=30%>
{{#scroll 24 1 4}}
{{~#entitiesbyname '*'}}
{{~#each .}}
{{~#test Id in @root.Data.IDs}}{{else}}
<color=white><u></color><color=red>{{Name}}</color></u> [<color=#{{~#test EntityType eq 'BA'}}F00{{/test}}{{~#test EntityType eq 'CV'}}F0F{{/test}}{{~#test EntityType eq 'SV'}}FA0{{/test}}{{~#test EntityType eq 'HV'}}00F{{/test}}>{{EntityType}}</color>]
{{recycle . 'Box-Recycling-Foss*'}}  min: X:
{{~MinPos.X}} Y:{{~MinPos.Y}} Z:{{~MinPos.Z}}
  max: X:{{MaxPos.X}} Y:
{{~MaxPos.Y}} Z:{{MaxPos.Z}}
  current X:{{X}} Y:{{Y}} Z:{{Z}}
  Blocks: Total:{{TotalBlocks}}  Checked:
{{~CheckedBlocks}}  RemovedBlocks:
{{~RemovedBlocks}}
{{/recycle}}
{{deconstruct . 'Box-Recycling-Foss*'}}  min: X:
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