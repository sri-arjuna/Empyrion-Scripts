-- ------------------------------------------------------
-- Takes nearby entities that start with name "Move-"
-- Searches all containers and moves their content boxes starting with "Content" (Content1,2,3 ... Content9999)
-- Does NOT work with POI's!!!
-- You could assign the sw_DeconRecylce signal for this script lcd as well.
-- ------------------------------------------------------
{{#entitiesbyname @root 'Move-*'}}
{{#each .}}
{{#items S '*'}}
{{move this @root.E.S 'Content*'}}
* {{SourceE.Name}}:{{Source}}
  -> {{~DestinationE.Name}}:{{Destination}}
  -> {{format Count '{0,5}'}} : {{Name}}
{{/move}}
{{/items}}
{{/each}}
{{/entitiesbyname}}