## aj.rig_root entity context

execute store result score @s ml_aj.temp run data get entity @s item.tag.data.bar_offset
execute store result storage ml_aj:logic data.temp.offset float 0.1 run scoreboard players add @s ml_aj.temp 20
data modify entity @s transformation.translation[1] set from storage ml_aj:logic data.temp.offset
