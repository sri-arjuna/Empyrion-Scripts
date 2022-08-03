-- ------------------------------
-- Desciption:      Parses each Swtich named according to below syntax and checks it versus container names that follow the auto sort syntax.
--                  However due to a string issue with split, we had to change the syntax of the switch name.
--
--					This setup requires 1 Furnace per Ore, and per 1 ore, there is a storage box ("Ore-*", not used in this script) and a furnace box ("S-*", as used)
-- 
--         LCD:        Script:[+6]AutoFurnace
--         LCD:        Autofurnace
--         Switch:     <prefix>-<InputID>-<OutputID>-<Name>		(for some reason it does not "eat" <prefix>-<Name>-<InputID>-<OutputID>)
--         BoxInput:   S-
--         BoxOutput:  B-
--         Furnace:    Name does not matter, as the boxes are defined in the device.
--
-- Manual Changes:
--         PreSwitch = I recomend to set it to "sw", the current "SO" is german for "Schalter Ofen".
--         PreInput = Currently set to "S" for "Schmelze", as we're moving the ores from "Ore-<Name>-<ID>, could be "F" or "fi" for "furnace input"
--         PreOutput = Currently "B" for "Barren", can remain for "Bars"
-- 
-- By OnlyJens83 & Sephrajin
-- DEBUG:
-- 		{{~#split CustomName '-'}}
--          {{!Why does it not reckognize strings .2 & .3 - while .1 Would be a string - BUT does work when .3 is the String??}}
--		    0:{{.0}}  // 1:{{.1}} // 2:{{.2}}  // 3:{{.3}}
--      {{/split}}
-- -------------------------------

{{#test (calc @root.CycleCounter '%' 3) eq 0}}
	{{~set 'CheckOreMin' 100}}
	{{~set 'CheckBarMax' 10000}}
	{{~set 'PreSwitch' 'SO'}}
	{{~set 'PreInput' 'S'}}
	{{~set 'PreOutput' 'B'}}
	
	{{~#devices @root.E.S (concat @root.data.PreSwitch '-*')}}
		{{~#each .}}
			{{~#split CustomName '-'}}
				{{set 'InputName' .1}}
				{{set 'InputId' .2}}
				{{set 'OutputId' .3}}

				{{~set 'InputBox' (concat @root.data.PreInput '-' @root.data.InputName '-' @root.Data.InputId)}}
				{{~set 'OutputBox' (concat @root.data.PreOutput '-' @root.data.InputName '-' @root.Data.OutputId)}}
			{{/split}}
{{!Ore: Get count}}
			{{~#items E.S @root.data.InputBox}}
				{{~#each .}}
					{{set 'ValOre' 0}}
					{{set 'Tmp' 0}}
					{{~math @root.data.Tmp '+' (calc @root.data.ValOre '+' Count)}}
						{{set 'ValOres' .}}
					{{/math}}
				{{/each}}
			{{/items}}
{{!Ore: Compare value}}
			{{~#test @root.data.ValOre 'geq' @root.data.CheckOreMin}}
{{!Bar: Get count, because enough ore}}
				{{~#items E.S @root.data.OutputBox}}
					{{set 'ValBar' 0}}
					{{set 'Tmp' 0}}
					{{~math @root.data.Tmp '+' (calc @root.data.ValBar '+' Count)}}
						{{set 'ValBar' .}}
					{{/math}}
				{{/items}}
{{!Bar: Less than max?}}
				{{#test @root.data.ValBar 'leq' @root.data.CheckBarMax}}
					{{setswitch @root.E.S (concat @root.data.PreSwitch '-' @root.data.InputName '-' @root.data.OutputId) true}}{{/setswitch}}
				{{else}}
					{{setswitch @root.E.S (concat @root.data.PreSwitch '-' @root.data.InputName '-' @root.data.OutputId) false}}{{/setswitch}}
				{{/test}}
{{!Ore: Not enough}}
			{{else}}
				{{setswitch @root.E.S (concat @root.data.PreSwitch '-' @root.data.InputName '-' @root.data.OutputId) false}}{{/setswitch}}
			{{/test}}
			{{/test}}
		{{/each}}
{{/test}}