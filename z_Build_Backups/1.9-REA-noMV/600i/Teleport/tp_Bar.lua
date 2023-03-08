{{#dialog 'triggerBar'
'DSEV 600i'
'
<link="T1"><color=green>◉ PilotSeat</color></link>
<link="T2"><color=yellow>◉ Bridge Combat</color></link>
<link="T3"><color=yellow>◉ Atrium / Teleporter</color></link>
<link="T5"><color=#ff6600>◉ Hangar Front</color></link>
<link="T6"><color=#cc6600>◉ Production (Hanger center)</color></link>
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
DEBUG: Teleport to: X:{{Position.x}} Y:{{~Position.y}} Z:{{Position.z}}
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
	{{#block @root.E.S -12 136 53}}
		{{teleportplayer ../../Player .}}
	{{/block}}
{{/test}}
{{#test Link 'eq' 'T5'}}
	{{#block @root.E.S -5 128 78}}
		{{teleportplayer ../../Player .}}
	{{/block}}
{{/test}}
{{#test Link 'eq' 'T6'}}
	{{#devices @root.E.S '[00ffaa]Box-Work In-640k'}}
		{{#use .[0]}}
			{{teleportplayer ../../../Player .}}
		{{/use}}
	{{/devices}}
{{/test}}
{{#test Link 'eq' 'T7'}}
	{{#block @root.E.S -12 128 8}}
		{{teleportplayer ../../Player .}}
	{{/block}}
{{/test}}
----------------------------------------------------
{{/dialog}}




