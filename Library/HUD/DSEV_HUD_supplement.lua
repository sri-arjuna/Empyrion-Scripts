<line-height=245>
<align=right><line-height=-10>
┈┈┈┈┄┄┄┄╌╌╌╌────╜<line-height=-8>
 ║
 ║
 ║
┈┈┈┄┄┄╌╌╌───╢
 ║
 ║
 ║
 ║<size=-1><line-height=-7.5>
╎
╎
╎
╎
┆
┆
┆
┈┈┄┄╌╌──══╕<color=#1affff><line-height=15>
</align><indent=180><line-height=8>
<align=center><color=white><u></color><size=4><color=green>☺</color> <i>Bio Life Scanner:</i> <color=green>☹</color></size></u><size=3>
<color=white><line-height=4>{{~scroll 6 1 1}}{{#each P.Players}}[ <i><color=#1affff>{{Name}}</color></i> ]
{{/each}}{{/scroll}}</color><line-height=8>
<align=center><color=white><u></color><size=4><color=yellow>✈</color> <i>Docked Vessels:</i> <color=yellow>✈</color></size></u><size=3>
<color=white><line-height=6>{{~scroll 6 1 1}}{{#each E.S.DockedE}}[ <i><color=#1affff>{{Name}}</color></i> ] {{~#if S.IsPowerd}}<color=red> !! ON !!</color>{{/if}}
{{/each}}
{{/scroll}}</color>
</size></align></indent>