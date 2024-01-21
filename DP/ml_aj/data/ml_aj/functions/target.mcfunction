## Set the attack target for a model
## "id": The model id
## "selector": The target selector

scoreboard players set @s ml_aj.temp 0

data remove storage ml_aj:logic data.temp.attack
data remove storage ml_ces:logic data.uuid.output
$execute as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run data modify entity @s item.tag.data.selector set value '$(selector)'

$execute as $(selector) run function ml_aj:ai/target/set
#Prevent failure if selector entity not found
execute unless data storage ml_aj:logic data.temp.attack.id run data modify storage ml_aj:logic data.temp.attack.id set value [I;0,0,0,0]
$execute store result score @s ml_aj.temp as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run function ml_aj:model/vehicle/special/guard/set with storage ml_aj:logic data.temp.attack

$data modify storage ml_aj:logic data.temp.attack.selector set value '$(selector)'
$execute if score @s ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"Failed to set target entity "},{"storage":"ml_aj:logic","nbt":"data.temp.attack.selector","color":"gold"},{"text":" as the attack target for the model with id "},{"text":"$(id)","color":"gold"},{"text":". It may be that the model id is invalid, the model's AI type is not set as a bee, wolf, polar bear, or iron golem; or that the model's AI is set to hostile."}]

execute unless score @s ml_aj.temp matches 0 run tellraw @s[tag=debug] [{"text":"\n[MLAJ] "},{"text":"Model target has been set.\n","color":"green"}]
