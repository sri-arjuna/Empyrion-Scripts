{{~#test (calc @root.CycleCounter '%' 3) eq 0}}{{~set 'Vol' 0}}{{~set 'Filled' 0}}{{~set 'P' 0}}{{~#devicesoftype E.S. 'AmmoCntr'}}{{~#each .}}{{set 'CN' CustomName}}{{~#math @root.data.Vol '+' ./Device.VolumeCapacity }}{{~set 'Vol' .}}{{~/math}}{{~#items @root.E.S @root.Data.CN}}{{~#math @root.Data.Filled '+' (calc (configattr Id 'Volume') '*' Count)}}{{~set 'Filled' .}}{{~/math}}{{~/items}}{{/each}}{{~#math (calc 100 '/' @root.Data.Vol ) '*' @root.data.Filled}}{{~set 'P' .}}{{/math}}{{~#test @root.Data.P leq '50'}}{{set 'c1' '1D1'}}{{/test}}{{~#test @root.Data.P in '50-75'}}{{set 'c1' 'DA1'}}{{/test}}{{~#test @root.Data.P in '75-90'}}{{set 'c1' 'B40'}}{{/test}}{{~#test @root.Data.P geq '90'}}{{set 'c1' 'D11'}}{{/test}}
<line-height=4>
Ammo: <color=#{{@root.data.c1}}>{{format @root.Data.P '{0,0:0}'}}</color>% / {{~#math @root.Data.Vol '/' 1000}}{{format . '{0,1:N0}'}}k{{/math}}
<color=white>[<color=#{{@root.data.c1}}>{{bar @root.Data.Filled 0 @root.data.Vol 15 '▰' ' ' }}</color>]</color>{{/devicesoftype}}<line-height=3>
<size=3>{{scroll 9 3 1}}{{~#items E.S. '*Ammo-*'}}
☉ {{format count '{0,0:N0}'}}<pos=23>{{i18n key}}</pos>{{/items}}{{/scroll}}</size>{{/test}}