## function ml_aj:system/data/trig/sin_cos
## febb9c15-2927-4e5a-90d4-75f277e02983 entity context

data modify entity @s Rotation[0] set from storage ml_aj:logic data.trig.input
execute positioned 0.0 0.0 0.0 rotated as @s run tp @s ^ ^ ^1
execute store result score #sin ml_aj.global run data get entity @s Pos[0] 10000
scoreboard players operation #sin ml_aj.global *= #ml_aj_negate ml_aj.global
execute store result storage ml_aj:logic data.trig.sin float 0.0001 run scoreboard players get #sin ml_aj.global

execute store result score #cos ml_aj.global run data get entity @s Pos[2] 10000
execute store result storage ml_aj:logic data.trig.cos float 0.0001 run scoreboard players get #cos ml_aj.global
