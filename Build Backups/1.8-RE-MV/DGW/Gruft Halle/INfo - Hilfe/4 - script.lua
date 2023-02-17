<u>Namestruktur</u>

1. Prefix für 'vor'-sortierung
2. Mittelteil kann irgendwas sein
3. Die zahl definiert die ID des items, mehrere mit / 'teilen'

{{#scroll 3 1}}
{{items E.S. 'BoxIDcheck'}}
Box: <color=red><prefix>-{{Name}}-{{ID}}</color>
LCD: <color=red><prefix>-{{Name}}-{{ID}}y</color>
{{/items}}
{{/scroll}}