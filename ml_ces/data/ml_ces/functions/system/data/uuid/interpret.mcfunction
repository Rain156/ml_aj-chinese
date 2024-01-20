## Get a UUID string from an entity
## target entity context
## Converted UUID is placed in data storage ml_ces:logic data.uuid.output

data modify storage ml_ces:logic data.uuid.name set value '{"text":""}'
execute if data entity @s CustomName run data modify storage ml_ces:logic data.uuid.name set from entity @s CustomName
execute if data entity @s CustomName run data modify entity @s CustomName set value '""'

tag @s add ml_ces.uuid_target
execute positioned 0 -64 0 summon minecraft:armor_stand run function ml_ces:system/data/uuid/interpret_final
tag @s remove ml_ces.uuid_target

execute unless data storage ml_ces:logic {data:{uuid:{name:'{"text":""}'}}} run data modify entity @s CustomName set from storage ml_ces:logic data.uuid.name

#Return if no output
execute unless data storage ml_ces:logic data.uuid.output run return 0

#Store the conversion for easy lookup
data modify storage ml_ces:logic data.uuid.dictionary append value {id:[I;0,0,0,0],string:""}
data modify storage ml_ces:logic data.uuid.dictionary[-1].id set from storage ml_ces:logic data.uuid.input
data modify storage ml_ces:logic data.uuid.dictionary[-1].string set from storage ml_ces:logic data.uuid.output
