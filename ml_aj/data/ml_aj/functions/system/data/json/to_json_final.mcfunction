## function ml_aj:system/data/json/to_json
## new armor stand entity context

data merge entity @s {Invisible:1b,Marker:1b,Small:1b,DisabledSlots:4144896,ArmorItems:[{},{},{},{id:"minecraft:ghast_tear",Count:1b,tag:{display:{Name:'""'}}}]}
item modify entity @s armor.head ml_aj:text_to_json
data modify storage ml_aj:logic data.text.interpret.output set string entity @s ArmorItems[3].tag.display.Name
kill @s
