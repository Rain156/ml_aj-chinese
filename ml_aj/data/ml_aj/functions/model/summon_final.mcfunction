## function ml_aj:model/summon
## aj.rig_root entity context

#Badge setup should only run once for the lifetime of this model
execute store result entity @s item.tag.data.badge int 1 run scoreboard players add #ml_global ml_aj.id 1
scoreboard players operation @s ml_aj.id = #ml_global ml_aj.id
execute at @s run function ml_aj:model/find/complete
data modify storage ml_aj:logic data.player.temp.id set from entity @s item.tag.data.id
