-- Description:
-- Recycles blocks and devices to their components and moves them to boxes starting with "Loot" (Loot1,2,3... Loot999)
-- Requires:
-- * Script LCD:		Script:Recycle
-- * Output LCD:		Recycle
-- * Output Dimension:	0.5x0.5	
--
-- Optional:
-- * Switch:	sw_DeconRecylce ("Tx Signal", not just the "Name")
--				Assign signal logic to the following script-LCD's for Power on/off (follow ; default)
-- ------------------------------------------------------

{{~scroll 17 1}}{{#entitiesbyname '*'}}
{{#each .}}
{{#test @root.E.Id 'neq' Id}}
<size=+2><color=orange>{{Name}}:</color></size>
<size=-2>{{#recycle . 'Loot*'}}
  min: {{MinPos}}
  max: {{MaxPos}}
  current X: {{X}}
  current Y: {{Y}}
  current Z: {{Z}}
  TotalBlocks: {{TotalBlocks}}
  CheckedBlocks: {{CheckedBlocks}}
  RemovedBlocks: {{RemovedBlocks}}
</size>
{{else}}
- {{/recycle}}
{{/test}}
{{/each}}
{{/entitiesbyname}}{{/scroll}}
