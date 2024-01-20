## scheduled event
## target entity context
## "entity": The attacker entity's UUID string
## "damage": The damage amount
## "dist_tick": The distance tick amount

#Check if entity is still within directional attack range
$data modify storage ml_aj:logic data.temp.target set value {rot_x:0f,dist_tick:$(dist_tick)}
$data modify storage ml_aj:logic data.temp.target.rot_x set from entity $(entity) Rotation[0]

tag @s add ml_aj.impact_target
$execute as $(entity) unless entity @s[tag=ml_aj.dying] at @s run function ml_aj:model/vehicle/execute_pos {command:"execute anchored eyes positioned ^ ^ ^0.001 as @e[tag=ml_aj.impact_target,limit=1,sort=nearest] run function ml_aj:ai/attack/execute_dir with storage ml_aj:logic data.temp.target"}
tag @s remove ml_aj.impact_target

$damage @s[tag=ml_aj.attack_target] $(damage) minecraft:mob_attack by $(entity)
tag @s remove ml_aj.attack_target

return 1
