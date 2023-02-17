-- -------------------------------------------------------
-- Description:		Sorts everything to boxes according to XYXY
-- Requires:
-- * Switch: 		sw_AS_Stage1		(Name & TX Signal :: Enables ->this LCD<-)
-- * Script LCD:	Script:[+16]SortStage1
-- * Output LCD:	SortStage1
-- * Boxes:			StageSorting1
-- c-Solar Cell-5998
-- -------------------------------------------------------

{{#test (calc @root.CycleCounter '%' 3) eq 0}}
	{{~#items E.S 'Box Drop*;Cargo In*;*Ammo Out*'}}
	{{~#devices @root.E.S 'eb-*;c-*;v-*'}}
	{{~#each .}}
		{{~#split CustomName '-'}}
			{{~#test Length eq '3'}}
			{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}
			{{~/split}}
				{{~#test ../../../../Id 'in' @root.Data.Ids}}
{{~#move ../../../../../. @root.E.S ../../../CustomName}}
 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
{{/move}}
				{{/test}}
			{{/test}}
		{{/split}}
	{{/each}}
	{{/devices}}{{~#move . @root.E.S 'StageSorting1'}}{{/move}}{{/items}}
{{/test}}