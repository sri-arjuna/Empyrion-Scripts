{{#dialog 'TriggerTeleport*'
'Teleport'
'
<link="T1"><color=green>◉ Bridge Front</color></link>
<link="T2"><color=yellow>◉ Bridge Combat</color></link>
<link="T3"><color=yellow>◉ Atrium / Teleporter</color></link>
<link="T4"><color=orange>◉ Open Bar</color></link>
<link="T5"><color=red>◉ Hangar Front</color></link>
<link="T6"><color=#663300>◉ Production (Hanger center)</color></link>
<link="T7"><color=red>◉ Hangar Rear</color></link>

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
{{#test Link 'eq' 'T2'}}
	{{#devices @root.E.S 'Bridge_Combat'}}
		{{#use .[0]}}
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
{{#test Link 'eq' 'T4'}}
	{{#block @root.E.S 0 132 26}}
		{{teleportplayer ../../Player .}}
	{{/block}}
{{/test}}
{{#test Link 'eq' 'T6'}}
	{{#devices @root.E.S 'TriggerTeleportHangarFront'}}
		{{#use .[0]}}
			{{teleportplayer ../../../Player .}}
		{{/use}}
	{{/devices}}
{{/test}}
{{#test Link 'eq' 'T6'}}
	{{#devices @root.E.S 'TriggerTeleportProduction'}}
		{{#use .[0]}}
			{{teleportplayer ../../../Player .}}
		{{/use}}
	{{/devices}}
{{/test}}
{{#test Link 'eq' 'T8'}}
	{{#devices @root.E.S 'TriggerTeleportHangarRear'}}
		{{#use .[0]}}
			{{teleportplayer ../../../Player .}}
		{{/use}}
	{{/devices}}
{{/test}}
----------------------------------------------------
{{/dialog}}
