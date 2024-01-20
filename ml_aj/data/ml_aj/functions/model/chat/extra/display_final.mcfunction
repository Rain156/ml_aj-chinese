## function ml_aj:model/chat/callback/display
## aj.rig_root entity context

data modify storage ml_aj:logic data.player.temp.badge set from entity @s item.tag.data.badge
execute if data entity @s item.tag.data.brightness unless data entity @s {item:{tag:{data:{brightness:-1}}}} run data modify storage ml_aj:logic data.player.temp.brightness set string entity @s item.tag.data.brightness
execute if entity @s[tag=ml_aj.has_rotation] unless data entity @s item.tag.data.head run data modify entity @s item.tag.data.head set value "h_head"
execute if entity @s[tag=ml_aj.has_rotation] run function ml_aj:model/chat/extra/display_head with entity @s item.tag.data

#View Range
execute store result score @s ml_aj.temp run data get entity @s item.tag.data.view
execute store result storage ml_aj:logic data.player.temp.view float 0.1 run scoreboard players get @s ml_aj.temp
data modify storage ml_aj:logic data.player.temp.view set string storage ml_aj:logic data.player.temp.view 0 -1

#Shadow
execute store result score @s ml_aj.temp run data get entity @s shadow_radius 10
execute store result storage ml_aj:logic data.player.temp.shadow float 0.1 run scoreboard players get @s ml_aj.temp
data modify storage ml_aj:logic data.player.temp.shadow set string storage ml_aj:logic data.player.temp.shadow 0 -1
execute store result score @s ml_aj.temp run data get entity @s shadow_strength 10
execute store result storage ml_aj:logic data.player.temp.opacity float 0.1 run scoreboard players get @s ml_aj.temp
data modify storage ml_aj:logic data.player.temp.opacity set string storage ml_aj:logic data.player.temp.opacity 0 -1

#Callbacks
execute if data entity @s item.tag.data.cb.reload run data modify storage ml_aj:logic data.player.temp.reload set from entity @s item.tag.data.cb.reload
execute if data entity @s item.tag.data.cb.reload run data modify storage ml_aj:logic data.player.temp.suggest set from entity @s item.tag.data.cb.reload
execute if data entity @s item.tag.data.cb.reload run function ml_aj:system/data/safe_suggest
execute if data entity @s item.tag.data.cb.reload run data modify storage ml_aj:logic data.player.temp.reload_suggest set from storage ml_aj:logic data.player.temp.suggest

execute if data entity @s item.tag.data.cb.damage run data modify storage ml_aj:logic data.player.temp.damage set from entity @s item.tag.data.cb.damage
execute if data entity @s item.tag.data.cb.damage run data modify storage ml_aj:logic data.player.temp.suggest set from entity @s item.tag.data.cb.damage
execute if data entity @s item.tag.data.cb.damage run function ml_aj:system/data/safe_suggest
execute if data entity @s item.tag.data.cb.damage run data modify storage ml_aj:logic data.player.temp.damage_suggest set from storage ml_aj:logic data.player.temp.suggest

execute if data entity @s item.tag.data.cb.death run data modify storage ml_aj:logic data.player.temp.death set from entity @s item.tag.data.cb.death
execute if data entity @s item.tag.data.cb.death run data modify storage ml_aj:logic data.player.temp.suggest set from entity @s item.tag.data.cb.death
execute if data entity @s item.tag.data.cb.death run function ml_aj:system/data/safe_suggest
execute if data entity @s item.tag.data.cb.death run data modify storage ml_aj:logic data.player.temp.death_suggest set from storage ml_aj:logic data.player.temp.suggest
