## aj.rig_root entity context
## Place damage float amount in storage ml_aj:logic data.temp.damage.amount, then run this function

execute if entity @s[tag=ml_aj.dying] run return 0
execute if entity @s[tag=ml_aj.invulnerable] run return 0

#To update the health bar, place current health in #ml_aj_damage ml_aj.temp and max health in #ml_aj_damage ml_aj.check

execute store result score @s ml_aj.number run data get storage ml_aj:logic data.temp.damage.amount 10
execute store result score #ml_aj_damage ml_aj.temp run data get entity @s item.tag.data.health 10
scoreboard players operation #ml_aj_damage ml_aj.temp -= @s ml_aj.number

#Apply damage variant if needed, but only if not healing (heal is negative damage value)
execute if score @s ml_aj.number matches 1.. if data entity @s item.tag.data.d_variant run function ml_aj:ai/damage/apply_variant with entity @s item.tag.data

#Clamp at 0 and max
execute store result score #ml_aj_damage ml_aj.check run data get entity @s item.tag.data.health_max 10
execute if score #ml_aj_damage ml_aj.temp matches ..0 run scoreboard players set #ml_aj_damage ml_aj.temp 0
execute if score #ml_aj_damage ml_aj.temp > #ml_aj_damage ml_aj.check run scoreboard players operation #ml_aj_damage ml_aj.temp = #ml_aj_damage ml_aj.check

execute store result entity @s item.tag.data.health float 0.1 run scoreboard players get #ml_aj_damage ml_aj.temp

#Callback
execute if data entity @s item.tag.data.cb.damage run data modify storage ml_aj:logic data.temp.command set from entity @s item.tag.data.cb.damage
execute if data entity @s[tag=!ml_aj.health_update] item.tag.data.cb.damage run function ml_aj:ai/damage/apply_callback

execute if score #ml_aj_damage ml_aj.temp matches ..0 run function ml_aj:model/death with entity @s item.tag.data.anims.death

return 1
