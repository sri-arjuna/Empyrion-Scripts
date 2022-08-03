{{fontsize 3}}
{{#if P.IsPvP}}
{{#intervall 1}} 
{{bgcolor 'ff0000'}}
{{else}}
{{bgcolor '000000'}}
{{/intervall}}
{{else}}
{{bgcolor '000000'}}
{{/if}}
{{#devices E.S 'Hull Shield'}}
{{setswitch @root.E.S 'ShieldState' .0/Active}}
{{#if .0/Active}}
{{@root.E.Name}}
{{else}}
{{#intervall 1}} 
{{@root.E.Name}} <color=yellow>Shield Offline</color>
{{else}}
{{@root.E.Name}} <color=red>Shield Offline</color>
{{/intervall}}
{{/if}}
{{/devices}}
Playfield: "{{P.Name}}" / {{P.PlayfieldType}} / PvP:{{P.IsPvP}}

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
 
Docked:
{{#each E.S.DockedE}}
 - {{Name}} 
{{~#if S.IsPowerd}} !! ON !! {{/if}}
{{/each}}
 
Player:
{{#each P.Player}}
 - {{Name}}
{{/each}}
 
Passengers:
{{#each E.S.Passengers}}
 - {{Name}}
{{/each}}
 
Time on board: {{datetime}}
{{Version}}