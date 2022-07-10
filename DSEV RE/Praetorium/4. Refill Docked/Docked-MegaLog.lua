-- -------------------------------------------------------
-- Description:		MegaLog, Collects all AutoDock* and AutoMove* scripts into a single output for display
-- Requires:
-- * Script LCD:		Script:DockedLog
-- * Output Projector:	MegaLog (Width: 3.25 (output is 2 blocks) ; Height: 2.0 ; X/Y Offset: so it fits... for me -0.75 and -1.5)
-- 					
-- -------------------------------------------------------
<size=10><color=white> Time <pos=55>| Type</pos><pos=105>| Count</pos><pos=145>| Object</pos><pos=320>| Direction Source/Target</pos></color></size>
{{~devices @root.E.S 'AutoMove;DockAu*'}}
{{scroll 48 2}}
{{~#each .}}
{{~gettext .}}
{{.}}
{{~/gettext}}
{{/each}}
{{/scroll}}
{{~/devices}}