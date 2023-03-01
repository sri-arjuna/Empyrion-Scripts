{{#dialog 'tTPHangRear'
'DSEV 600i HET'
'
<link="T1"><color=green>◉ Bridge Front
</color></link>
<link="T3"><color=yellow>◉ Atrium / Teleporter
</color></link>
'
'Exit(Esc)'
'0' '2' '200'
''
'true'
''
}}
ButtonIdx:{{ButtonIdx}}
LinkId: {{Link}}
PlayerInput:{{PlayerInput}}
Player:{{Player.Name}}
DialogData:{{DialogData}}
{{#test Link 'eq' 'T1'}}
	{{#devices @root.E.S 'Bridge_Front'}}
		{{#use .[0]}}
			Teleport to: X:{{Position.x}} Y: {{~Position.y}} Z:{{Position.z}}
			{{teleportplayer ../../../Player .}}
		{{/use}}
	{{/devices}}
{{/test}}
{{#test Link 'eq' 'T3'}}
	{{#devices @root.E.S '600i_Atrium_Teleporter'}}
		{{#use .[0]}}
			{{teleportplayer ../../../Player .}}
		{{/use}}
	{{/devices}}
{{/test}}
----------------------------------------------------
{{/dialog}}
