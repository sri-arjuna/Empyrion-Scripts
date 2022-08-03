<color=grey><u> Time <pos=75>| Type</pos><pos=125>| Count</pos><pos=180>| Object</pos><pos=460>| Direction Source/Target</pos><pos=780>_</pos></u></color>
{{~devices @root.E.S 'SortStage*'}}
{{scroll 45 1}}
{{~#each .}}
{{~gettext .}}
{{.}}
{{~/gettext}}
{{/each}}
{{/scroll}}
{{~/devices}}