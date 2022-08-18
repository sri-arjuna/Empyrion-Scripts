-- Description:		Shows time and date
-- Requires:
-- * Script LCD:	Script:datetime*
-- * Output LCD:	datetime1 ... datetime99
-- *				Setting: 0.2x1 / 0.2x0.5 // Fontsize=default (7)
-- Special Note:	Use another LCD named "CultureInfo" - without prefix "Script:" - it should fill itself with the following lines
--					which you then can use to adjust/fix time offset and your language settings.
-- 					ändert::		"LanguageTag": "de-DE"		- Dies ändert Zahlenformate
--					ändert:			"i18nDefault": "Deutsch"	- Dies ändert die angezeigte Sprache von items
--					ändert:			"UTCplusTimezone": 2		- Für die korrekte Uhrzeit
-- -------------------------------------------------------
<align=center><size=+5><i>{{datetime 'HH:mm'}}</i></size>
<size=-5>{{datetime 'dd.MM.yy'}}</size></align>

-- Long

<align=center><size=+5><i>{{datetime 'HH:mm:ss'}}</i></size>
<size=+1>{{datetime 'dd.MM.yyyy'}}</size></align>