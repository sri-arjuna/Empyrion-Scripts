<size=-1><align=center><color=grey><color=white><u></color>{{P.PlayfieldType}}:</u></color></color></size>
{{P.Name}} (<color={{~if P.IsPvP}}red>PvP{{else}}green>PvE{{/if}}</color>)
 
<size=-1><color=grey><color=white><u></color>Type/Class:</u></color></color></size>
{{P.PlanetType}}/{{P.PlanetClass}}
 
<size=-1><color=grey><color=white><u></color>Bioscan Results:</u></color></color></size>
{{scroll 3 1}}
{{~#each P.Players}}
 - {{Name}}
{{/each}}
{{/scroll}}
