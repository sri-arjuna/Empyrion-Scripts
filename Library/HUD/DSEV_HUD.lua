<line-height=-4>
╓────╌╌╌╌┄┄┄┄┈┈┈┈<line-height=5>
║
║
╟───╌╌╌┄┄┄┈┈┈<line-height=4.5>
║
╟──╌╌┄┄┈┈
║
╟─╌┄┈<line-height=9>
║
║
╎
╎
╎
┆
┆
┆<color=#1affff>
<line-height=-106>
<line-height=10>
<indent=5><size=+4><i><color={{if P.isPVP}}{{intervall 1 1}}red{{else}}yellow{{/intervall}}{{else}}#33ffff{{/if}}>{{P.Name}}</color></i></size><line-height=8.5>
<size=-3>⚛ <color=#333333> {{P.PlayfieldType}} // {{P.PlanetClass}} </color> ⚛<line-height=9>
<color=white>{{datetime 'HH:mm:ss'}}</color></size></i>
<line-height=-39>
<line-height=7>
<align=center>-=❲<i><color=orange>{{E.Name}}</color></i>❳=-
<line-height=173>
<line-height=10>
<align=center><size=3><i>Dynamic HUD with Scripts, by DSEV - Deep Space Exploration Versatiles (Sephrajin), to hide/disable it, use P-Menu --> "Toggle Scripts"</i></size></align>
<line-height=-46>
<size=4><line-height=10>
Damage {{#use E.S.DamageLevel}}[<color={{test . leq 5}}green{{else}}red{{/test}}>{{bar . 0 100 40 '▰' ' ' }}</color>]{{~format . '{0,8:P2}'}}{{/use}}
</align>
<line-height=-110>
<indent=265><line-height=8>
<align=center><color=white><u></color><size=6>☤ <color=green><i>Bio Life Scanner:</i></color> ☤</size></u><size=4>
<color=white><line-height=6>{{~scroll 2 1 1}}{{#each P.Players}}[ <i><color=#1affff>{{Name}}</color></i> ]
{{/each}}
{{/scroll}}</color><line-height=8>
<align=center><color=white><u></color><size=6>✈ <color=yellow><i>Docked Vessels:</i></color> ✈</size></u><size=4>
<color=white><line-height=6>{{~scroll 2 1 1}}{{#each E.S.DockedE}}[ <i><color=#1affff>{{Name}}</color></i> ] {{~#if S.IsPowerd}}<color=red> !! ON !!</color>{{/if}}
{{/each}}
{{/scroll}}</color>
</size></align></indent><line-height=-82>
<align=left>
{{~devices @root.E.S 'HUD_*'}}{{~#each .}}<line-height=8>
{{~gettext .}}<size=4>{{.}}
</size>{{~/gettext}}
{{/each}}{{~/devices}}