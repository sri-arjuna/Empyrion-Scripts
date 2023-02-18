-- -------------------------------------------------------
-- Label multiple LCDs with a simple progress bar, showing the content (expecting -> 1 <- (one!) item only !!)
-- Modified by Sephrajin February 2023, Original by Astic
-- -------------------------------------------------------
-- Description:		Labels multiple boxes with colored text and only 1 dash (-)
-- Requires:
-- * Script LCD:		Script:ReserveStatus
-- * Output Projector:	ReserveStatus
-- 		* Width:		1
-- 		* Height:		0.25
-- -------------------------------------------------------

{{~#devices E.S '*Reserve-*'}}{{~#each .}}{{~set 'CN' CustomName}}{{~set 'Vol' ./Device.VolumeCapacity}}{{~set 'Load' 0}}
{{~#split CustomName ']'}}{{~set 'DN' .1}}{{~/split}}
	{{~#items @root.E.S @root.Data.CN}}
		{{~#math @root.Data.T '+' (calc (configattr Id 'Volume') '*' Count)}}{{~set 'T' .}}{{~/math}}
	{{~/items}}
{{~#math (calc @root.Data.T '/' @root.data.Vol) '*' 100}}{{~set 'P' .}}{{/math}}{{~#test @root.Data.P leq '50'}}{{set 'c1' '1D1'}}{{set 'c2' '030'}}{{/test}}{{~#test @root.Data.P in '50-75'}}{{set 'c1' 'DA1'}}{{set 'c2' '220'}}{{/test}}{{~#test @root.Data.P in '75-90'}}{{set 'c1' 'B40'}}{{set 'c2' '310'}}{{/test}}{{~#test @root.Data.P geq '90'}}{{set 'c1' 'D11'}}{{set 'c2' '300'}}{{/test}}
{{~#devices @root.E.S (concat @root.Data.DN 'y')}}{{~#each .}}{{~settextblock .}}
<size=-2> </size>
<align=center>{{~concat '<color=#' @root.Data.c1 '>'}}{{bar @root.Data.T 0 @root.data.Vol 10 '▒' (concat '<color=#' @root.Data.c2 '>░</color>')}}</color>
{{~set 'T' 0}}{{~set 'P' 0}}
{{#items @root.E.S @root.Data.CN}}{{i18n key}} {{count}}
{{/items}}</align>
			{{/settextblock}}
			{{/each}}
	{{/devices}}
{{/each}} 
{{/devices}}