## function ml_aj:model/death
## ml_aj.vehicle entity context

tag @s add ml_aj.dying

effect give @s minecraft:slowness infinite 50 true
data modify entity @s Invulnerable set value 1b
execute if entity @s[type=minecraft:bee] run attribute @s minecraft:generic.flying_speed base set 0

#Stop path movement if any
execute if entity @s[tag=ml_path.ai_vehicle] run function ml_path:mob/release
