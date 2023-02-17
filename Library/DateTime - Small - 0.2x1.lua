-- Description:		Shows time and date
-- Requires:
-- * Script LCD:	Script:datetime*
-- * Output LCD:	datetime1 ... datetime99
-- *				Setting: 0.2x1 / 0.2x0.5 // Fontsize=default (7)
-- Special Note:	Please see ./CultureInfo.lua for more info
-- -------------------------------------------------------

<align=center><size=+5><i>{{datetime 'HH:mm'}}</i></size>
<size=-5>{{datetime 'dd.MM.yy'}}</size></align>

-- Long version
-- Only pick one 2 liners (above or below)

<align=center><size=+5><i>{{datetime 'HH:mm:ss'}}</i></size>
<size=+1>{{datetime 'dd.MM.yyyy'}}</size></align>