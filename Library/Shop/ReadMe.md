Shop Framework
==============

This script allows you to set up a Vendor that sells multiple items, at different prices and (may) give different amounts of items to the customer.


How it works:
-------------

The "ShopLabels" retrieves the items price via the LCD Price-<NR> and prints how much PlatinumCards are placed within the "Buy-Item-<NR>" box in the syntax: <Current> / <ReqTotal>.
Furthermore it shows how many items are left in the Stock-Item-<NR> box.

To adjust the items you want to sell, you'll change the "ItemKey" list of the Script:ShopFramework. Likewise you'll need to adjust the "Price" and "Amount" of items it should give according to their relative position within the listing.
This script will actualy print the items price onto "Price-<NR>" and prints a translated (if you use a CultureInfo lcd) onto "Item-<NR>".


Requirements:
-------------

The script is array based, and arrays are 0-based (which is the 1st item in the list).
So for <NR> must start with 0 and can go up to any number of entries.

Scripts:
* Script:ShopFramework
* Script:ShopLabels


LCD Output:
* Stock-LCD-<NR>
* Buy-LCD-<NR>
* Item-<NR>
* Price-<NR>


Boxes:
* Stock-Item-<NR>
* Buy-Item-<NR>
* Out-<NR>

Shop Example:
--------------

![](Shop_Example.jpg)