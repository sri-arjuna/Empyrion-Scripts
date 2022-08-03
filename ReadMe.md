Description:
============
Scripts (self written & modified) by Sephrajin for DSEV entities, vessels and buildings

These scripts are written for the Reforged Eden scenario for non-mass/volume gameplay!
But there is a special folder for those that I did write in the past.


Requires: 
---------
* Empyrion ([Forum thread with more scripts](https://empyriononline.com/threads/mod-ext-empyrion-scripting-scripts.92458/)) :: 
* [Script mod by Astic](https://github.com/GitHub-TC/EmpyrionScripting)
* Most of the scripts also cover item IDs from: [Reforged Eden (1.8)](https://steamcommunity.com/sharedfiles/filedetails/?id=2550354956) by Ravien_FF and Vermillion

Note:
-----
With recent updates, scripts will not work when the LCD is powered off.
This said, one can and should use this feature to safe server performance (or your own computer performance if hosted local.)
This applies most for sorting (move) and PlayFieldInfo functions!

If you want to edit scripts, I highly recomend [Notepad++](https://notepad-plus-plus.org/downloads/) and use the .lua extension (for automatic syntax highlighting) rather than .txt for the files.


Name Schemes:
=============

Generic:
--------
Leading "Box" so they appear "ontop" of the F4 (wifi) list, regardless wether they're assigned to a constructor type or not.
* Box <what> Input
* Box <what> Output
* Box <Special> (like: Drop, Transfer, Reserves, Equipment, and so on)

Fridges (CV/BA):
---------------------
This applies for bases and CV's that do have a farm (plots) to harvest plants and veggies.
* Fridge Food Input/Output
* Fridge Medic Input/Output

Mission Vessels:
----------------
The "astreix" (*), declares that there is either nothing or 1 to 99
* Fridge: 	Medics & Food
* Box:		Reserves
* Box:		Equipment
* Box:		Loot*, Stuff*