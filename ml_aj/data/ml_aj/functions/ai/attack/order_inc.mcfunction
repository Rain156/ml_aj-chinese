## function ml_aj:ai/attack/select
## aj.rig_root entity context
## "attack_i": The current attack index

$scoreboard players set @s ml_aj.temp $(attack_i)
scoreboard players add @s ml_aj.temp 1
execute store result score @s ml_aj.check run data get entity @s item.tag.data.anims.attack
execute if score @s ml_aj.temp = @s ml_aj.check run scoreboard players set @s ml_aj.temp 0
execute store result entity @s item.tag.data.anims.attack_i int 1 run scoreboard players get @s ml_aj.temp
