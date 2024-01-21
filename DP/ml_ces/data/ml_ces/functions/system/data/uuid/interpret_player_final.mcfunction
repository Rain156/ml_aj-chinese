## function ml_ces:system/data/uuid/interpret_player
## new armor stand entity context

data merge entity @s {Invisible:1b,Marker:1b,Small:1b,DisabledSlots:4144896,ArmorItems:[{},{},{},{id:"minecraft:ghast_tear",Count:1b,tag:{display:{Name:'""'}}}]}
item modify entity @s armor.head ml_ces:uuid
data modify storage ml_ces:logic data.uuid.string set string entity @s ArmorItems[3].tag.display.Name 9

scoreboard players set #ml_temp ml_ces.temp 0
function ml_ces:system/data/uuid/interpret_player_loop {index:0}

kill @s
