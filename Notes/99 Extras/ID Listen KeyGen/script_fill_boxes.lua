-- Vanilla: Ore,Ingot,BlockL,BlockS,Medic,Food,Ingredient,Sprout,Tools,ArmorMod,DeviceL,DeviceS,WeaponPlayer,WeaponHV,WeaponSV,WeaponCV,WeaponBA,AmmoPlayer,AmmoHV,AmmoSV,AmmoCV,AmmoBA
-- Eden: 
-- ----------------------------------------------------

{{set 'Vanilla' 'Ore,Ingot,BlockL,BlockS,Medic,Food,Ingredient,Sprout,Tools,ArmorMod,DeviceL,DeviceS,WeaponPlayer,WeaponHV,WeaponSV,WeaponCV,WeaponBA,AmmoPlayer,AmmoHV,AmmoSV,AmmoCV,AmmoBA'}}


{{~#devicesoftype E.S. 'Container'}}
	{{~#each .}}
		{{~set 'CN' CustomName}}
		{{~#split CustomName '-'}}{{~set 'Box' .1}}{{~/split}}
		{{~#devices @root.E.S (concat @root.Data.Box '_display')}}
		{{~#each .}}
		{{~settextblock .}}	<align=center><line-height=0>


{{additems container itemid count}}


-- ----------------------

{{~#devices E.S. 'Box-*'}}
	{{~#each .}}
{{CustomName}}:
		{{~#split CustomName '-'}}
			{{~set 'LN' (concat '{{IDs.' .1 '}}')}}
		{{~/split}}
		{{additems CustomName @root.data.LN 1}}
			yay
		{{else}}
			nope
		{{/additems}}
	{{/each}}
-------------------
{{/devices}}

-- ----------------------------------------

{{~#devices E.S. 'Box-*'}}
	{{~#each .}}
{{CustomName}}:
		{{~#split CustomName '-'}}
			{{~set 'LN' (concat '{{IDs.' .1 '}}')}}
		{{~/split}}
		Debug: {{@root.data.LN}}
		{{additems . @root.data.LN 1}}yay{{/additems}}
	{{/each}}
-------------------
{{/devices}}

 {{lookup IDs .1}} 
 
-- --------------------

{{~#devices E.S. 'Box-*'}}
	{{~#each .}}
Kiste: {{CustomName}}:
		{{~#split CustomName '-'}}
			{{~set 'LN' (concat '{{IDs.' .1 '}}')}}
			1-{{lookup IDs @root.data.LN}}
			2-{{lookup @root.data.LN .1}}
			3-{{lookup IDs 4444}}
			4-{{lookup IDs .1}}
		{{/split}}
ListName zum weiter arbeiten: {{@root.data.LN}}
 
	{{/each}}
-------------------
{{/devices}}

