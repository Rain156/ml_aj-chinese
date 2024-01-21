## function ml_aj:model/scan
## aj.rig_root entity context

#Check if out of range
scoreboard players set #ml_temp ml_aj.temp 0
execute store result score #ml_temp ml_aj.temp if entity @s[tag=ml_aj.can_despawn] run function ml_aj:model/despawn/check with entity @s item.tag.data

#Check if outdated
execute if score #ml_temp ml_aj.temp matches 0 if entity @s[tag=!ml_aj.disabled,tag=ml_aj.auto_reload] if function ml_aj:model/is_outdated run function ml_aj:model/reload/add
