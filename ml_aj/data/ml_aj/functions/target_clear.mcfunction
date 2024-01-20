## Remove the attack target from a model
## "id": The model id

scoreboard players set @s ml_aj.temp 0
$execute store result score @s ml_aj.temp as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run function ml_aj:model/vehicle/special/guard/remove

$execute if score @s ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"Failed to remove the attack target from the model with id "},{"text":"$(id)","color":"gold"},{"text":". It may be that the model id is invalid."}]

execute unless score @s ml_aj.temp matches 0 run tellraw @s[tag=debug] [{"text":"\n[MLAJ] "},{"text":"Model target has been cleared.\n","color":"green"}]
