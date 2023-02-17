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