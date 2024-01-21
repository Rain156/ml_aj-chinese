## aj.rig_root entity context

execute if data entity @s item.tag.data.target run function ml_aj:ai/attack/custom/check_target with entity @s item.tag.data
execute unless data entity @s item.tag.data.target if data storage ml_aj:logic data.temp.guard run function ml_aj:ai/attack/custom/set_target with storage ml_aj:logic data.temp

#Vehicle sets ml_aj.check to 1 if no guard target
execute if score #ml_temp ml_aj.check matches 1 run function ml_aj:ai/attack/custom/reset
