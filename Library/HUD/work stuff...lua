

-- ---------------
1x :: ─ ╌ ┄ ┈
2x :: ── ╌╌ ┄┄ ┈┈
3x :: ─── ╌╌╌ ┄┄┄ ┈┈┈
4x :: ──── ╌╌╌╌ ┄┄┄┄ ┈┈┈┈


╎

┆

┊

╓ ─ ─ ╌ ╌ ┄ ┄ ┈ ┈
║
╟ ─ ╌ 


-- ------------------
Schräger balken für dmg status
▰
Block leer
▯
-- -----------------

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


-- ------------------
<align=center><size=+7><color=white><u></color>{{@root.E.Name}}</u></size></align>
 
{{P.Name}} <color={{#if P.IsPvP}}{{#intervall 1}}red>{{bgcolor 'ff0000'}}{{else}}yellow>{{bgcolor '000000'}}{{/intervall}}{{else}}green>{{bgcolor '000000'}}{{/if}}PvP</color>
 
{{#devices E.S '*Augmented *;*Shield Generator*'}}
Shield: <color={{~#if .0/Active}}green>Online{{else}}{{~#intervall 1}}yellow>Offline{{else}}red>Offline{{/intervall}}{{/if}}</color>
{{/devices}}

<color=green>Fuel</color>
{{#use E.S.FuelTank}}
{{bar Content 0 Capacity 20 }} 
{{~math Content '/' Capacity}}
{{~format . '{0,8:P2}'}}
{{~/math}} =
{{~format Content ' {0,7:0.0}'}} / {{format Capacity '{0,7:0.0}'}} Fuel
{{/use}}

<color=#2ECCFA>Oxygen</color>
{{#use E.S.OxygenTank}}
{{bar Content 0 Capacity 20 }} 
{{~math Content '/' Capacity}}
{{~format . '{0,8:P2}'}}
{{~/math}} = 
{{~format Content ' {0,7:0.0}'}} / {{format Capacity '{0,7:0.0}'}} Oxygen
{{/use}}

<color=purple>Pentaxid</color>
{{#use E.S.PentaxidTank}}
{{bar Content 0 Capacity 20 }} 
{{~math Content '/' Capacity}}
{{~format . '{0,8:P2}'}}
{{~/math}} = 
{{~format Content ' {0,7:0.0}'}} / {{format Capacity '{0,7:0.0}'}} Pentaxid
{{/use}}
 
<line-height=-70>
<indent=550>
<line-height=10>
Docked:
{{scroll 3 1}}
{{#each E.S.DockedE}}
 - {{Name}} 
{{~#if S.IsPowerd}} <color=red>!! ON !!</color>{{/if}}
{{/each}}
{{/scroll}}
 

 
Passengers:
{{scroll 3 1}}
{{~#each E.S.Passengers}}
 - {{Name}}
{{/each}}
{{/scroll}}