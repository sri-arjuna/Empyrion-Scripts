-- ----------------------------
-- Display cool layout on Container Controller, combo with 2 parts: LCD fix + Script
-- Requires:
--          * 1 LCD Projector	-	Change "Offset" so it is displayed on the container controller
--          * Manual change on Storage size  (400 k  >> ??)
--          * Manual change on Name          (Loot 1 >> ??)
-- * Optionals:
--             Change text "CARGO" to "AMMO" or "HARVEST"
--             Change font color to match its purpose
--  Original by sulusdacor, modified by Sephrajin
-- ----------------------------------------------- LCD Project 'non script'
{{~#devicesoftype E.S. 'HarvestCntr'}}{{~#each .}}{{~set 'CN' CustomName}}{{~set 'Vol' 0}}{{~#split CustomName '-'}}{{~set 'DN' .1}}{{~/split}}{{~#math @root.data.Vol '+' (calc ./Device.VolumeCapacity '/' 1000) }}{{~set 'Vol' .}}{{~/math}}{{~#devices @root.E.S (concat @root.Data.DN '_dd')}}{{~#each .}}{{~settextblock .}}	<align=center><line-height=0>
	</line-height>
	<size=16><pos=-105>━━━━━━<line-height=5.5>
	<rotate=45><pos=-47>┃<line-height=11>
	<pos=-26>┃
	<pos=-5>┃
	<pos=16>┃</rotate><line-height=13>
	<pos=26>┃<line-height=15>
	<pos=26>┃
	<pos=26>┃
	<pos=26>┃
	<pos=26>┃
	<pos=26>┃
	<pos=26>┃<line-height=13>
	<pos=26>┃<line-height=8.8>
	<pos=-36.3>━━━━━━━━<line-height=-4.8>
	<rotate=45><pos=-110>┃<line-height=-10>
	<pos=-131>┃<line-height=-6>
	<pos=-144>┃</rotate><line-height=-126.5>
	<pos=-154>┃<line-height=15>
	<pos=-154>┃
	<pos=-154>┃
	<pos=-154>┃
	<pos=-154>┃
	<pos=-154>┃
	<pos=-154>┃
	<pos=-154>┃<line-height=14.5>
	<pos=-154>┃<line-height=-124>
	<size=50><alpha=#54><pos=-105>▂
	<line-height=138><alpha=#ff>
	<size=31><pos=-45.5>◣<line-height=3.7>
	<size=16><pos=-105>━━━━━━<line-height=3>
	<size=31><pos=-70>◥<line-height=-5.5>
	<pos=-140>◣<line-height=2>
	<line-height=6.5><color=yellow><size=9>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
	</color><line-height=-55>
	<size=50><pos=-131>┃<line-height=46>
	<pos=-131>┃<line-height=17>
	<size=20><pos=-140>▬
	<pos=-142><size=30>◤<line-height=12>
	<size=10><pos=97>▢▢▣▢<line-height=9>
	<pos=97>▣▢▢
	<pos=97>▢▢▢▣<line-height=-56>
	<alpha=#1a><size=30><pos=100>▃
	<alpha=#ff><line-height=60><color=yellow>
	<size=7><pos=100><b>{{@root.Data.Vol}} k<line-height=-95.5>
	<color=white><line-height=0.5>
	<size=6><pos=-110>CARGO<line-height=2.7>
	<color=yellow></b>
	<size=4><i><pos=-99>{{@root.Data.DN}}
			{{/settextblock}}
			{{/each}}
	{{/devices}}
{{/each}} 
{{/devicesoftype}}
-- -------------------------------
-- -------------------------------
-- -------------------------------
-- -------------------------------
-- Requires:
--          * LCD:                        Script:BarLoot1		(or whatever your box name is)
--          * LCD Projector:              BarLoot1
--          * Projector - "z Rotation":   -90
--          * Projector - Offset:         Change so it is displayed on the other LCD empty vertial space.
-- by Sephrajin
-- -----------------------------------------
{{~#devicesoftype E.S. 'HarvestCntr'}}{{~#each .}}{{~set 'CN' CustomName}}{{~set 'Vol' 0}}{{~#split CustomName '-'}}{{~set 'DN' .1}}{{~/split}}{{~#math @root.data.Vol '+' (calc ./Device.VolumeCapacity '/' 1000) }}{{~set 'Vol' .}}{{~/math}}{{~#items @root.E.S @root.Data.CN}}{{~#math @root.Data.T '+' (calc (configattr Id 'Volume') '*' Count)}}{{~set 'T' .}}{{~/math}}{{~/items}}{{~#math (calc @root.Data.T '/' ./Device.VolumeCapacity) '*' 100}}{{~set 'P' .}}{{/math}}{{~#test @root.Data.P leq '50'}}{{set 'c1' '1D1'}}{{set 'c2' '030'}}{{/test}}{{~#test @root.Data.P in '50-75'}}{{set 'c1' 'DA1'}}{{set 'c2' '220'}}{{/test}}{{~#test @root.Data.P in '75-90'}}{{set 'c1' 'B40'}}{{set 'c2' '310'}}{{/test}}{{~#test @root.Data.P geq '90'}}{{set 'c1' 'D11'}}{{set 'c2' '300'}}{{/test}}{{~#devices @root.E.S (concat @root.Data.DN '_db')}}{{~#each .}}{{~settextblock .}}
<size=-2> </size>
<pos=21>{{~concat '<color=#' @root.Data.c1 '>'}}{{~bar @root.Data.T 0 @root.data.Vol 10 '▒' (concat '<color=#' @root.Data.c2 '>░</color>')}}</color></pos>
{{~set 'T' 0}}{{~set 'P' 0}}
			{{/settextblock}}
			{{/each}}
	{{/devices}}
{{/each}} 
{{/devicesoftype}}