{{~#test (calc @root.CycleCounter '%' 7) eq 0}}{{~set 'Vol' 0}}{{~set 'Filled' 0}}{{~set 'P' 0}}{{~#devices E.S. '*Box-*;*c-*;*i-;*div-*;bl-*;bs-*;ds-*;dl-*;'}}{{~#each .}}{{set 'CN' CustomName}}{{~#math @root.data.Vol '+' ./Device.VolumeCapacity }}{{~set 'Vol' .}}{{~/math}}{{~#items @root.E.S @root.Data.CN}}{{~#math @root.Data.Filled '+' (calc (configattr Id 'Volume') '*' Count)}}{{~set 'Filled' .}}{{~/math}}{{~/items}}{{/each}}{{~#math (calc @root.Data.Vol '/' @root.data.Filled ) '*' 100}}{{~set 'P' .}}{{/math}}{{~#test @root.Data.P leq '50'}}{{set 'c1' '1D1'}}{{/test}}{{~#test @root.Data.P in '50-75'}}{{set 'c1' 'DA1'}}{{/test}}{{~#test @root.Data.P in '75-90'}}{{set 'c1' 'B40'}}{{/test}}{{~#test @root.Data.P geq '90'}}{{set 'c1' 'D11'}}{{/test}}
<line-height=4>
Cargo: <color=#{{@root.data.c1}}>{{format @root.Data.P '{0,0:0}'}}</color>%
<color=white>[<color=#{{@root.data.c1}}>{{bar @root.Data.P 0 100 10 '▰' ' ' }}</color>]</color>
{{/devices}}{{/test}}