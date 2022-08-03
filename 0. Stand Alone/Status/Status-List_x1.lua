-- -------------------------------------
-- Status information and item counts
-- Written by Sephrajin 2019-2022
-- ------------------------------------
-- List Ingots & Ores, red on low or missing -- the 'plain ids' are Eden related and sadly do not work for the 0 check...
-- Requires:
--		LCD:		Script:StatusIO
-- Output:
--		Projector:	StatusIO
-- ------------------------------------
{{~set 'limitLow' 500}}
{{~set 'limitMedium' 5000}}
{{~set 'limitGood' 10000}}
<align=center><size=+7>Ingots / Ores</size>
{{bar 1 0 1  30 '═'}}</align>
{{scroll 14 1}}
{{#sortedeach E.S.Items 'Count' true}}
{{~#test Id 'in' (concat @Ids.Ingot @Ids.Ore '7300,7301,7342-7344,4365')}}
<pos=10><color={{~#test Count geq @root.Data.limitGood}}green>{{~else}}{{~#test Count le @root.Data.limitMedium}}{{~#test Count le @root.Data.limitLow}}red>{{else}}orange>{{/test}}{{~else}}yellow>{{/test}}{{/test}}◉ {{i18n Key}}</pos> <pos=140>{{format Count '{0,6:N0}'}}</pos></color>
{{/test}}
{{/sortedeach}}
{{#itemlist E.S.Items (concat @Ids.Ingot @Ids.Ore '7300,7301,7342-7344,4365')}}{{~#test Count geq 1}}{{~else}}<pos=10><color=red>○ {{i18n Key}}</pos> <pos=140><size=+1>    ⚠</size></pos></color>
{{/test}}
{{/itemlist}}
{{/scroll}}
-- ------------------------------------
-- List Components, red on low or missing
-- Requires:
--		LCD:		Script:StatusComponents
-- Output:
--		Projector:	StatusComponents
-- ------------------------------------
{{~set 'limitLow' 500}}
{{~set 'limitMedium' 5000}}
{{~set 'limitGood' 10000}}
<align=center><size=+7>Komponenten</size>
{{bar 1 0 1  30 '═'}}</align>
{{scroll 14 1}}
{{#sortedeach E.S.Items 'Count' true}}
{{~#test Id 'in' '4375,4374,4357,4401,4340,4338,4339,4331,4314,4307,4308,4315,4303,4304,4311,4360,4361,4363,4364,4306,4310,4312,4343,4313,4305,4330,4309,4334,4337,4366,4367,4350-4356,4378-4381,5097,5108,5706-5708,7298,7299,7302,7303,7310,7312,7313,7320,7330,7341,4444,4358,4377'}}
<pos=10><color={{~#test Count geq @root.Data.limitGood}}green>{{~else}}{{~#test Count le @root.Data.limitMedium}}{{~#test Count le @root.Data.limitLow}}red>{{else}}orange>{{/test}}{{~else}}yellow>{{/test}}{{/test}}◉ {{i18n Key}}</pos> <pos=140>{{format Count '{0,6:N0}'}}</pos></color>
{{/test}}
{{/sortedeach}}
{{#itemlist E.S.Items '4375,4374,4357,4401,4340,4338,4339,4331,4314,4307,4308,4315,4303,4304,4311,4360,4361,4363,4364,4306,4310,4312,4343,4313,4305,4330,4309,4334,4337,4366,4367,4350-4356,4378-4381,5097,5108,5706-5708,7298,7299,7302,7303,7310,7312,7313,7320,7330,7341,4444,4358,4377'}}{{~#test Count geq 1}}{{~else}}<color=red>○ {{i18n Key}} <pos=140><size=+1>    ⚠</size></pos></color>
{{/test}}
{{/itemlist}}
{{/scroll}}