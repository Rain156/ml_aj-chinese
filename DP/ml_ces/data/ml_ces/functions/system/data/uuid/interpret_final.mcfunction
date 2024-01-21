## function ml_ces:system/data/uuid/interpret
## new armor stand entity context

data merge entity @s {Invisible:1b,Marker:1b,Small:1b,DisabledSlots:4144896,ArmorItems:[{},{},{},{id:"minecraft:ghast_tear",Count:1b,tag:{display:{Name:'""'}}}]}
item modify entity @s armor.head ml_ces:uuid
data modify storage ml_ces:logic data.uuid.output set string entity @s ArmorItems[3].tag.display.Name -38 -2
kill @s
