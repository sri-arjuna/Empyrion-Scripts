-- ----------------------------
-- Description:
--              You only need 2 scripts for ALL containers. (this includes the Bar script)
--              However, you will still need 2 projectors for every container, each with its own special naming scheme.
-- Requires:
--          * Box:           Box-<Name>				(example "Box-Cargo One")
--          * LCD:           Script:CargoDisplay
--
--  Output:	
--          * Projector:     Cargo One_display
--               * Offset:   Change so it is displayed on the container controller

--  Original design by sulusdacor, scriptified by Sephrajin
-- -----------------------------------------------

{{~#devicesoftype E.S. 'AmmoCntr,Container,HarvestCntr'}}{{~#each .}}{{~set 'CN' CustomName}}{{~set 'Vol' 0}}{{~#split CustomName '-'}}{{~set 'DN' .1}}{{~/split}}{{~#math @root.data.Vol '+' (calc ./Device.VolumeCapacity '/' 1000) }}{{~set 'Vol' .}}{{~/math}}{{~#devices @root.E.S (concat @root.Data.DN '_dd')}}{{~#each .}}{{~settextblock .}}	<align=center><line-height=0>
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