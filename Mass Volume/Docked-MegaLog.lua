-- -------------------------------------------------------
-- Description:		MegaLog, Collects all AutoDock* and AutoMove* scripts into a single output for display
-- Requires:
-- * Script LCD:		Script:[+]MegaLog
-- * Output Projector:	MegaLog (Width: 3.25 (output is 2 blocks) ; Height: 2.0 ; X/Y Offset: so it fits... for me -0.75 and -1.5)
-- 					
-- -------------------------------------------------------
<color=grey> Time <pos=55>| Type</pos><pos=105>| Count</pos><pos=145>| Object</pos><pos=320>| Direction Source/Target</pos></color>
{{~devices @root.E.S 'Log_*;AutoMove;DockAu*'}}
{{scroll 48 2}}
{{~#each .}}
{{~gettext .}}
{{.}}
{{~/gettext}}
{{/each}}
{{/scroll}}
{{~/devices}}