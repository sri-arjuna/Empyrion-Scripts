Concept use for ID lists in combination with sorting
====================================================

Quite a good while back, Astic has introduced "ID Lists", that should help to work with - well - id lists.

A brief overview how to work with them:
    
	* [Ger](https://github.com/GitHub-TC/EmpyrionScripting#vordefinierte-id-listen)
    * [ENG](https://github.com/GitHub-TC/EmpyrionScripting#predefined-id-lists)

That is great for very customized scenarios, either private SP or private servers.

However, for the broad audience of vanilla and RE players, I'm aiming to explain the concept of how (and where) to use (which) id list.



Sorting AIO vs. multiple scripts:
---------------------------------

In short, you can sort **everything** with 1 script, but that requires you to have 1 cargo box (or container controller) for each and every single item!

Granted, one can combine 2, even 3-4 - if lucky - items into one box, but it still is a **heckload of boxes** you will need, and on top of that, this method ***WILL*** cause frequent and massive lag, at the very least while the script is active! (this is true as soon you exceed.. somewhat between 30-80 boxes with a single script-parse)


The other approach, which I think is more appealing for most people - I'll explain in a bit, is to split the sorting into different stages, which will group certain items into a single container.

However, due to the fact that LCD are limited to 2000 characters, so are the scripts we use. So, in a best case scenario - while not generating ***any output*** as a log, we can sort up to 4 "groups" with a single script. But this still 'leaves' us, with multiple scripts we need to adjust.


However you want to apporach sorting, we can use a very simple method to label all content LCD in front it the box.

This requires: PREFIX-description (name)-ID/ID2/ID3

Prefix can be anything you like, however it should be kept as short as possible - just like the description, which btw, may contain spaces.

It is absolute essential that each and every box does have ***2 dashes (-)***, because without it, neither the LCD labeling, nor the sort script will work!

However, there is a little exception to the ID when working with groups / id lists, but more on that later.


	{{~#devicesoftype E.S 'Container'}}{{#each .}}{{~set 'BoxName' CustomName}}{{~#devices @root.E.S (concat CustomName 'y')}}{{~#each .}}{{~#settextblock .}}<size=3><align=center><color=red>{{~islocked @root.E.S ../../../.}}<sprite=4>-= Locked =-<sprite=4>{{/islocked}}</color></align></size><align=center><size=5><color=white><u></color>{{@root.data.BoxName}}</u></size></align>
						{{#items @root.E.S ../../../CustomName}}
							{{#scroll 15 1}}
	<size=3><pos=1>{{i18n key}}</pos> <pos=70>{{~math}}{{format Count '{0,6:N0}'}}{{/math}}</size></pos>
							{{/scroll}}
						{{/items}}
					{{/settextblock}}
				{{/each}}
			{{/devices}}
		{{/each}} 
	{{/devicesoftype}}



This following example, is an AIO solution, that I also use for the "group" approach.

	{{#test (calc @root.CycleCounter '%' 3) eq 0}}
		{{~#items E.S 'Box Drop*'}}
		{{~#devices @root.E.S 'io-*;c-*;v-*'}}
		{{~#each .}}
			{{~#split CustomName '-'}}
				{{~#test Length eq '3'}}
				{{~#split .2 '/'}}{{set 'Ids' (concat . ',')}}
				{{~/split}}
					{{~#test ../../../../Id 'in' @root.Data.Ids}}
	{{~#move ../../../../../. @root.E.S ../../../CustomName}}
	 <pos=1>{{datetime 'HH:mm:ss'}}</pos> <pos=75>| <color=yellow>Sort</color></pos><pos=125>| {{Count}}</pos><pos=180>| {{i18n Id}} </pos><pos=460>| {{Source}} <color=green>❱</color> {{Destination}}</pos>
	{{/move}}
					{{/test}}
				{{/test}}
			{{/split}}
		{{/each}}
		{{/devices}}{{~#move . @root.E.S 'StageSorting1'}}{{/move}}{{/items}}
	{{/test}}

The first line is already a *nice to have*, as it will execute the script only if CycleCounter can be divided by 3 and it returns an even number (aka every 3rd cycle).

Yes, there is another method to do that as well, but with this approach I can still completly disable the script at will by 'turning off' the LCD.

..
.
.
.
.


What I've seen most people do in their playstyle, is have at least 1 box for iron - zascosium.
However, after that, it often varies, some have 1 box for every type of building block, like carbon, steel, hard steel and combat steel - others have it all in one box.

.
.
.
.

Scenario:
---------

Lets say we want 1 box per vanilla ore, and have everything else grouped into 'single' boxes(per group) while it should remain easy expandable upon need.

So lets created boxes for:
* Iron
* Silicium
* Copper
* Cobalt
* Neodymium
* Erestrum
* Zascosium
* Promethium
* Pentaxid
* Wood
* Water
