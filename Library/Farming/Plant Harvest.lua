-- ----------------------------
-- Description:
--            As always, add the LCD to a group and name them accordingly
--            For this to work, you'll need to replace the numbers with the ones you'll see from "di" - lowest line, 
--               between the brackets "()", as those refer to the location on the structure, 
--               where as the ones on the top line would be on the world - and thus are not usable.
--            To get the proper location, you have to face straight forward (preferably in ego-perspective), and look at the plants.
--            Since it expects 2 parts of 3 numbers each, you'll have to make sure that you have the positions of the diagonal locations, so you have covered all of the area.
--            Same goes for the Crew, look at it, and replace its coordinates on the "harvest line".
--
--            Repeat this for each and every floor/level of plants you have, as the script cannot handle the height dimension.
--
--            You do not need an output LCD, but at least until it is working, it can be helpfull.
--            On the other hand, you can use the very same fridge for all levels, but that would fill it rather quickly.
--            Dont forget to put enough credits in each of the fridges!
--
-- Requires:
--            Script LCD:         Script:[+8]Harvest
--            Output LCD:         Harvest
--            Crew (Human):       Human at console
--            Fridge:             Fridge Main Input

{{#blocks E.S  11 133 19 -15 133 -23}}
	{{~#each .}}
{{Id}} {{i18n Id}} 
X: {{~Position.X}} // Y: {{~Position.Y}} // Z:{{~Position.Z}}
--
	{{/each}}
	{{~#harvest @root.E.S . 'Fridge Main Input' -2 133 -5 false}}
Harvest: 
{{i18n Id}}➔ {{~i18n ChildOnHarvestId}} get {{DropOnHarvestCount}}: {{~i18n DropOnHarvestId}}
--
	{{/harvest}}
{{/blocks}}