## function ml_aj:model/chat/anim/attack/settings/display
## aj.rig_root entity context
## "index": The animation index

$data modify storage ml_aj:logic data.player.temp.anim set from entity @s item.tag.data.anims.attack[$(index)]

data modify storage ml_aj:logic data.player.temp.name set from storage ml_aj:logic data.player.temp.anim.name
data modify storage ml_aj:logic data.player.temp.damage set from storage ml_aj:logic data.player.temp.anim.damage
data modify storage ml_aj:logic data.player.temp.damage_text set string storage ml_aj:logic data.player.temp.anim.damage
execute if data storage ml_aj:logic data.player.temp.anim.proj run data modify storage ml_aj:logic data.player.temp.damage_text set value "N/A"
data modify storage ml_aj:logic data.player.temp.anim.id set from storage ml_aj:logic data.player.temp.id
data modify storage ml_aj:logic data.player.temp.anim.index set from storage ml_aj:logic data.player.temp.index

#Distance
execute store result score @s ml_aj.temp run data get storage ml_aj:logic data.player.temp.anim.distance 10
execute store result storage ml_aj:logic data.player.temp.dist_int int 1 run scoreboard players get @s ml_aj.temp
execute store result storage ml_aj:logic data.player.temp.distance float 0.1 run scoreboard players get @s ml_aj.temp
data modify storage ml_aj:logic data.player.temp.distance set string storage ml_aj:logic data.player.temp.distance 0 -1

#Directional
execute if data storage ml_aj:logic {data:{player:{temp:{anim:{dir:0}}}}} run data modify storage ml_aj:logic data.player.temp.dir set value "False"

#Impact Time
execute if data storage ml_aj:logic data.player.temp.anim.impact_p run data modify storage ml_aj:logic data.player.temp.impact set from storage ml_aj:logic data.player.temp.anim.impact_p
execute unless data storage ml_aj:logic data.player.temp.anim.impact_p run data modify storage ml_aj:logic data.player.temp.impact set value 0
function ml_aj:model/chat/anim/attack/settings/display_impact with storage ml_aj:logic data.player.temp

#Cooldown Time
scoreboard players set @s ml_aj.temp 0
scoreboard players set #ml_temp ml_aj.number 20
execute if data storage ml_aj:logic data.player.temp.anim.cooldown store result score @s ml_aj.temp run data get storage ml_aj:logic data.player.temp.anim.cooldown 10
execute store result storage ml_aj:logic data.player.temp.cooldown float 0.1 run scoreboard players operation @s ml_aj.temp /= #ml_temp ml_aj.number
data modify storage ml_aj:logic data.player.temp.cooldown set string storage ml_aj:logic data.player.temp.cooldown 0 -1

#Projectile
execute if data storage ml_aj:logic {data:{player:{temp:{anim:{proj:"arrow"}}}}} run data modify storage ml_aj:logic data.player.temp.projectile set value "Arrow"
execute if data storage ml_aj:logic {data:{player:{temp:{anim:{proj:"potion"}}}}} run data modify storage ml_aj:logic data.player.temp.projectile set value "Potion"
execute if data storage ml_aj:logic {data:{player:{temp:{anim:{proj:"spectral_arrow"}}}}} run data modify storage ml_aj:logic data.player.temp.projectile set value "Spectral Arrow"
execute if data storage ml_aj:logic {data:{player:{temp:{anim:{proj:"trident"}}}}} run data modify storage ml_aj:logic data.player.temp.projectile set value "Trident"
execute if data storage ml_aj:logic {data:{player:{temp:{anim:{proj:"wither_skull"}}}}} run data modify storage ml_aj:logic data.player.temp.projectile set value "Wither Skull"
execute if data storage ml_aj:logic {data:{player:{temp:{anim:{proj:"snowball"}}}}} run data modify storage ml_aj:logic data.player.temp.projectile set value "Snowball"
execute if data storage ml_aj:logic {data:{player:{temp:{anim:{proj:"fireball"}}}}} run data modify storage ml_aj:logic data.player.temp.projectile set value "Fireball"
execute if data storage ml_aj:logic {data:{player:{temp:{anim:{proj:"small_fireball"}}}}} run data modify storage ml_aj:logic data.player.temp.projectile set value "Small Fireball"
execute if data storage ml_aj:logic {data:{player:{temp:{anim:{proj:"dragon_fireball"}}}}} run data modify storage ml_aj:logic data.player.temp.projectile set value "Dragon Fireball"
execute if data storage ml_aj:logic data.player.temp.anim.proj run function ml_aj:model/chat/anim/attack/settings/display_proj_speed with storage ml_aj:logic data.player.temp.anim
execute if data storage ml_aj:logic data.player.temp.anim.proj_nbt run function ml_aj:model/chat/anim/attack/settings/display_proj_nbt with storage ml_aj:logic data.player.temp.anim

#Callback
execute if data storage ml_aj:logic data.player.temp.anim.command run data modify storage ml_aj:logic data.player.temp.command set from storage ml_aj:logic data.player.temp.anim.command
execute if data storage ml_aj:logic data.player.temp.anim.command run data modify storage ml_aj:logic data.player.temp.suggest set from storage ml_aj:logic data.player.temp.anim.command
execute unless data storage ml_aj:logic data.player.temp.anim.command run data modify storage ml_aj:logic data.player.temp.suggest set value "Set Command Here"
function ml_aj:system/data/safe_suggest
execute if data storage ml_aj:logic data.player.temp.anim.command if data storage ml_aj:logic {data:{player:{temp:{anim:{cmd_time:0}}}}} run data modify storage ml_aj:logic data.player.temp.cmd_time set value "First Frame"
execute if data storage ml_aj:logic data.player.temp.anim.command if data storage ml_aj:logic {data:{player:{temp:{anim:{cmd_time:1}}}}} run data modify storage ml_aj:logic data.player.temp.cmd_time set value "Hit Time"
execute if data storage ml_aj:logic data.player.temp.anim.command if data storage ml_aj:logic {data:{player:{temp:{anim:{cmd_time:2}}}}} run data modify storage ml_aj:logic data.player.temp.cmd_time set value "Last Frame"
execute if data storage ml_aj:logic data.player.temp.anim.command if data storage ml_aj:logic {data:{player:{temp:{anim:{cmd_entity:0}}}}} run data modify storage ml_aj:logic data.player.temp.cmd_entity set value "AJ Model"
execute if data storage ml_aj:logic data.player.temp.anim.command if data storage ml_aj:logic {data:{player:{temp:{anim:{cmd_entity:1}}}}} run data modify storage ml_aj:logic data.player.temp.cmd_entity set value "Entity"
