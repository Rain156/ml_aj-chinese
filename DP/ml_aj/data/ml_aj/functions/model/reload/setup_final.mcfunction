## function ml_aj:model/reload/setup
## new aj.rig_root entity context

data remove storage ml_aj:logic data.temp.reload.data.name
data remove storage ml_aj:logic data.temp.reload.data.id

#Preserve the current attack and custom animations
data modify storage ml_aj:logic data.temp.reload.anims set from storage ml_aj:logic data.temp.reload.data.anims
data remove storage ml_aj:logic data.temp.reload.data.anims

data modify entity @s CustomName set from storage ml_aj:logic data.temp.reload.mob_name
data modify entity @s item.tag.data merge from storage ml_aj:logic data.temp.reload.data

#Setup tags
data modify storage ml_aj:logic data.temp.reload.tag set from storage ml_aj:logic data.temp.reload.tags[-1]
function ml_aj:model/reload/setup_tags with storage ml_aj:logic data.temp.reload
function ml_aj:model/animation/stop
tag @s remove ml_aj.ticking
tag @s remove ml_aj.invalid

execute store result score @s ml_aj.id run data get entity @s item.tag.data.badge
data modify storage ml_aj:logic data.temp.reload.id set from entity @s item.tag.data.id

#Copy attack and custom animations over, but leave the idle, walk, swim, death, & despawn since they are reloaded in the animation setup function
data modify entity @s item.tag.data.anims.attack set from storage ml_aj:logic data.temp.reload.anims.attack
data modify entity @s item.tag.data.anims.custom set from storage ml_aj:logic data.temp.reload.anims.custom

#If auto reload is not set
execute unless data storage ml_aj:logic data.temp.reload.data.auto_reload run data remove entity @s item.tag.data.auto_reload
execute unless data storage ml_aj:logic data.temp.reload.data.auto_reload run tag @s remove ml_aj.auto_reload

#If no despawn
execute unless data storage ml_aj:logic data.temp.reload.data.ds_type run function ml_aj:model/chat/spawn/despawn_disable

#Health bar init
function ml_aj:ai/health_bar/init
function ml_aj:model/chat/vehicle/set_color_final with entity @s item.tag.data

#If head bone name is set
execute if data entity @s item.tag.data.head run function ml_aj:model/setup/head_update with entity @s item.tag.data

#Callback
execute if data entity @s item.tag.data.cb.reload run data modify storage ml_aj:logic data.temp.command set from entity @s item.tag.data.cb.reload
execute if data entity @s item.tag.data.cb.reload run function ml_aj:system/entity/callback with storage ml_aj:logic data.temp
