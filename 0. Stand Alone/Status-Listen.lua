-- -------------------------------------
-- Status information and item counts
-- Written by Sephrajin 2019-2022
-- ------------------------------------
-- List Ingots & Ores, red on low or missing -- the 'plain ids' are Eden related and sadly do not work for the 0 check...
-- Requires:
--		LCD:		Script:StatusIO
-- Output:
--		LCD 1x1:	StatusIO			-- Change script to use:	Scroll 14 1 // pos=70
--		Projector (w:2.75 x h:3):		-- Change script to use:	Scroll 32 1 // pos=450
-- ------------------------------------
<align=center><size=+5>Ingots / Ores</size>
{{bar 1 0 1  30 '═'}}</align>
{{scroll 32 1}}
{{#sortedeach E.S.Items 'Count' true}}
{{~#test Id 'in' (concat @Ids.Ingot @Ids.Ore '7300,7301,7342-7344,4365')}}
<color={{~#test Count geq 10000}}green>{{~else}}{{~#test Count le 5000}}{{~#test Count le 500}}red>{{else}}orange>{{/test}}{{~else}}yellow>{{/test}}{{/test}}◉ {{i18n Key}} <pos=450>{{format Count '{0,6:N0}'}}</pos></color>
{{/test}}
{{/sortedeach}}
{{#itemlist E.S.Items (concat @Ids.Ingot @Ids.Ore '7300,7301,7342-7344,4365')}}{{~#test Count geq 1}}{{~else}}<color=red>○ {{i18n Key}} <pos=450><size=+1>    ⚠</size></pos></color>
{{/test}}
{{/itemlist}}
{{/scroll}}
-- ------------------------------------
-- List Components, red on low or missing
-- Requires:
--		LCD:		Script:StatusComponents
-- Output:
--		LCD 1x1:	StatusComponents	-- Change script to use:	Scroll 14 1 // pos=70
--		Projector (w:2.75 x h:3):		-- Change script to use:	Scroll 32 1 // pos=450
-- ------------------------------------
<align=center><size=+5>Components</size>
{{bar 1 0 1  30 '═'}}</align>
{{scroll 32 1}}
{{#sortedeach E.S.Items 'Count' true}}
{{~#test Id 'in' '4375,4374,4357,4401,4340,4338,4339,4331,4314,4307,4308,4315,4303,4304,4311,4360,4361,4363,4364,4306,4310,4312,4343,4313,4305,4330,4309,4334,4337,4366,4367,4350-4356,4378-4381,5097,5108,5706-5708,7298,7299,7302,7303,7310,7312,7313,7320,7330,7341,4444,4358,4377'}}
<color={{~#test Count geq 10000}}green>{{~else}}{{~#test Count le 5000}}{{~#test Count le 500}}red>{{else}}orange>{{/test}}{{~else}}yellow>{{/test}}{{/test}}◉ {{i18n Key}} <pos=450>{{format Count '{0,6:N0}'}}</pos></color>
{{/test}}
{{/sortedeach}}
{{#itemlist E.S.Items '4375,4374,4357,4401,4340,4338,4339,4331,4314,4307,4308,4315,4303,4304,4311,4360,4361,4363,4364,4306,4310,4312,4343,4313,4305,4330,4309,4334,4337,4366,4367,4350-4356,4378-4381,5097,5108,5706-5708,7298,7299,7302,7303,7310,7312,7313,7320,7330,7341,4444,4358,4377'}}{{~#test Count geq 1}}{{~else}}<color=red>○ {{i18n Key}} <pos=450><size=+1>    ⚠</size></pos></color>
{{/test}}
{{/itemlist}}
{{/scroll}}








-- Description:		Same as above, but sorted by count
-- Requires:
-- * Script LCD:	Script:IngOreCount
-- * Output LCD:	IngOreCount
-- -------------------------------------------------------
{{~set 'H' 'Ingots'}}
{{~set 'T' '1000'}}
{{~set 'IDs' '4320,4322,4324,4321,4323,4333,4326,4327,4360,4366'}}
{{~#split '#15FC05,#8FF904,#F4DC04,#F99C04,#FC6305,#CE1818' ','}}{{set 'C' .}}{{/split}}

{{~#split @root.ScriptId ':'}}{{devices @root.E.S .1}}{{#split (substring (i18n .0/Id 'English') 2) ' '}}{{set 'SS' .0}}{{/split}}{{/devices}}{{/split}}
{{~concat '<color=#FFF><align=center>' @root.Data.H '</align>'}}
<align=center>{{bar 1 0 1  45 '═'}}</align>

{{#sortedeach @root.E.S.Items 'Count' true}}{{~#test Id in @root.Data.IDs}}{{set 'X' (concat @root.Data.X Id ',')}}{{setblock 'D' ~}}
{{@root.Data.D}}{{Name}}:{{format Count '{0,6:N0}'}}:
{{~#test Count geq @root.Data.T}}{{@root.Data.C.0}}{{else}}
{{~#test Count ge (calc @root.Data.T '*' '0.75')}}{{@root.Data.C.1}}{{else}}
{{~#test Count ge (calc @root.Data.T '*' '0.50')}}{{@root.Data.C.2}}{{else}}
{{~#test Count ge (calc @root.Data.T '*' '0.25')}}{{@root.Data.C.3}}{{else}}{{@root.Data.C.4}}{{/test}}{{/test}}{{/test}}{{/test}};{{~/setblock}}
{{~/test}}{{~/sortedeach}}
{{~#itemlist @root.E.S.Items @root.Data.IDs}}{{#test Id in @root.Data.X}}{{else}}{{set 'D' (concat @root.Data.D Name ':' (format 0 '{0,6:N0}') ':' @root.Data.C.5 ';')}}{{/test}}{{/itemlist}}
{{~#split @root.Data.D ';' true}}{{#each .}}{{#split . ':'}}
{{~#test @root.Data.SS eq '1x2'}}{{~#test (calc @Index '%' 3) eq 2}}{{set 'P' '67,90'}}{{else}}{{~#test (calc @Index '%' 3) eq 1}}{{set 'P' '32,56'}}{{else}}
{{set 'P' '0,20'}}{{/test}}{{/test}}{{else}}
{{~#test @root.Data.SS eq '1x1'}}{~#test (calc @Index '%' 2) eq 1}}{{set 'P' '52,85'}}{{else}}
{{set 'P' '0,34'}}{{/test}}{{else}}
{{set 'P' '0,80'}}{{/test}}{{/test}}
{{~#split @root.Data.P ','}}{{~concat '<color=' ../.2 '><indent=' .0 '%>◉ ' ../.0 '</indent> <indent=' .1 '%>' ../.1 '</indent></color>' ~}}{{/split}}
{{~/split}}{{~/each}}{{~/split}}