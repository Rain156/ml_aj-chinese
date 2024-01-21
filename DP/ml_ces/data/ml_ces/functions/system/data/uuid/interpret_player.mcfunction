## Get a UUID string from a player
## target entity context
## Converted UUID is placed in data storage ml_ces:logic data.uuid.output

tag @s add ml_ces.uuid_target
execute positioned 0 -64 0 summon minecraft:armor_stand run function ml_ces:system/data/uuid/interpret_player_final
tag @s remove ml_ces.uuid_target

#Return if no output
execute unless data storage ml_ces:logic data.uuid.output run return 0

#Store the conversion for easy lookup
data modify storage ml_ces:logic data.uuid.dictionary append value {id:[I;0,0,0,0],string:""}
data modify storage ml_ces:logic data.uuid.dictionary[-1].id set from storage ml_ces:logic data.uuid.input
data modify storage ml_ces:logic data.uuid.dictionary[-1].string set from storage ml_ces:logic data.uuid.output

return 1
