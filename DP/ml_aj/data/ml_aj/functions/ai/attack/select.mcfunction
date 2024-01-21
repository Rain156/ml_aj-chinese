## function ml_aj:ai/attack/check
## function ml_aj:ai/attack/custom/check_final
## function ml_aj:ai/attack/custom/check_target
## aj.rig_root entity context

#Return if still in cooldown
execute if score @s ml_aj.cooldown matches 1.. run return 0

data modify storage ml_aj:logic data.temp.ai set value {max:1,target:0,true:1,now:0,revert:-1,anim:{time:0}}

#Use a default attack if no attack animations exist
execute unless data entity @s item.tag.data.anims.attack[0] run return run function ml_aj:ai/attack/select_default

execute store result score @s ml_aj.number run data get entity @s item.tag.data.anims.attack

#If there's only one, just set it
execute if score @s ml_aj.number matches 1 run function ml_aj:ai/attack/select_anim {target:0}

#Select at random if more than one and set to random
execute store result storage ml_aj:logic data.temp.ai.max int 1 run scoreboard players remove @s ml_aj.number 1
execute unless score @s ml_aj.number matches 0 if data entity @s {item:{tag:{data:{anims:{attack_i:-1}}}}} run function ml_aj:ai/attack/select_final with storage ml_aj:logic data.temp.ai
#Select order if needed
execute unless score @s ml_aj.number matches 0 unless data entity @s {item:{tag:{data:{anims:{attack_i:-1}}}}} run function ml_aj:ai/attack/select_order with entity @s item.tag.data.anims

#Set the guard target in case of guard execute
data modify storage ml_aj:logic data.temp.ai.anim.entity set from entity @s item.tag.data.target
scoreboard players set @s ml_aj.temp 0
execute if entity @s[tag=ml_aj.is_hostile] unless data storage ml_aj:logic {data:{temp:{ai:{anim:{time:0}}}}} store result score @s ml_aj.temp run function ml_aj:ai/attack/execute with storage ml_aj:logic data.temp.ai.anim
execute if entity @s[tag=ml_aj.is_guard,tag=!ml_aj.is_hostile] unless data storage ml_aj:logic {data:{temp:{ai:{anim:{time:0}}}}} store result score @s ml_aj.temp run function ml_aj:ai/attack/custom/execute with storage ml_aj:logic data.temp.ai.anim

#Only increment the attack order if needed and if the execute succeeded
execute if score @s ml_aj.temp matches 1 unless score @s ml_aj.number matches 0 unless data entity @s {item:{tag:{data:{anims:{attack_i:-1}}}}} run function ml_aj:ai/attack/order_inc with entity @s item.tag.data.anims

return 1
