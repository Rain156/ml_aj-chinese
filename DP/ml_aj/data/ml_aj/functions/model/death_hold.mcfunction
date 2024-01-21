## function ml_aj:model/death
## aj.rig_root entity context

summon minecraft:armor_stand ~ ~ ~ {Tags:[ml_aj.death_vehicle,ml_aj.death_temp],Invulnerable:1b,Invisible:1b,Small:1b,DisabledSlots:4144896,Attributes:[{Name:"minecraft:generic.scale",Base:0d}]}
function ml_aj:model/vehicle/execute {command:"ride @s mount @e[tag=ml_aj.death_temp,limit=1,sort=nearest]"}

#Make sure the vehicle is riding the armor stand
scoreboard players set #ml_temp ml_aj.temp 0
execute as @e[tag=ml_aj.death_temp,limit=1,sort=nearest] on passengers if entity @s[tag=ml_aj.vehicle] run scoreboard players set #ml_temp ml_aj.temp 1
execute if score #ml_temp ml_aj.temp matches 0 run kill @e[tag=ml_aj.death_temp]

tag @e remove ml_aj.death_temp
