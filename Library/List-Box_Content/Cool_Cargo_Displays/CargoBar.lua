-- -------------------------------
-- Requires:
--      * Box:                 Box-<Name>			(example "Box-Cargo One")
--      * LCD:                 Script:CargoBar
--      * Projector:           <Box Name>_bar		(example: 'Cargo One_bar')
--           * "z Rotation":   -90
--           * Offset:         Change so it is displayed on the other LCD empty vertial space.
-- Created by Sephrajin
-- -----------------------------------------

{{~#devicesoftype E.S. 'AmmoCntr,Container,HarvestCntr'}}{{~#each .}}{{~set 'CN' CustomName}}{{~set 'Vol' ./Device.VolumeCapacity}}{{~set 'Load' 0}}
{{~#split CustomName '-'}}{{~set 'DN' .1}}{{~/split}}
	{{~#items @root.E.S @root.Data.CN}}
		{{~#math @root.Data.T '+' (calc (configattr Id 'Volume') '*' Count)}}{{~set 'T' .}}{{~/math}}
	{{~/items}}
{{~#math (calc @root.Data.T '/' @root.data.Vol) '*' 100}}{{~set 'P' .}}{{/math}}{{~#test @root.Data.P leq '50'}}{{set 'c1' '1D1'}}{{set 'c2' '030'}}{{/test}}{{~#test @root.Data.P in '50-75'}}{{set 'c1' 'DA1'}}{{set 'c2' '220'}}{{/test}}{{~#test @root.Data.P in '75-90'}}{{set 'c1' 'B40'}}{{set 'c2' '310'}}{{/test}}{{~#test @root.Data.P geq '90'}}{{set 'c1' 'D11'}}{{set 'c2' '300'}}{{/test}}
CN:{{@root.data.CN}}DN:{{@root.data.DN}}Vol:{{@root.data.Vol}}load:{{@root.data.Vol}}t:{{@root.data.T}}
{{~#devices @root.E.S (concat @root.Data.DN '_bar')}}{{~#each .}}{{~settextblock .}}
<size=-2> </size>
<pos=21>{{~concat '<color=#' @root.Data.c1 '>'}}{{bar @root.Data.T 0 @root.data.Vol 10 '▒' (concat '<color=#' @root.Data.c2 '>░</color>')}}</color></pos>
{{~set 'T' 0}}{{~set 'P' 0}}
			{{/settextblock}}
			{{/each}}
	{{/devices}}
{{/each}} 
{{/devicesoftype}}