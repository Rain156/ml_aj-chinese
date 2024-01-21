## aj.rig_root entity context
## "time": The death animation time

tag @s add ml_aj.dying
tag @s add ml_aj.invulnerable
tag @s add ml_aj.rotate_fixed
tag @s remove ml_aj.rotate_target

#Prevent any current attacks being ran
function ml_aj:ai/attack/cancel

function ml_aj:model/vehicle/execute {command:"function ml_aj:model/vehicle/death"}
function ml_aj:model/animation/action/death

execute unless data entity @s {item:{tag:{data:{anims:{death:{time:0}}}}}} run function ml_aj:model/death_hold

#Callback
execute if data entity @s item.tag.data.cb.death run data modify storage ml_aj:logic data.temp.command set from entity @s item.tag.data.cb.death
execute if data entity @s item.tag.data.cb.death run function ml_aj:system/entity/callback with storage ml_aj:logic data.temp

#Schedule the delete if using death animation
$execute unless data entity @s {item:{tag:{data:{anims:{death:{time:0}}}}}} run function ml_ces:event/schedule/set {time:$(time),measure:"t",command:"function ml_aj:model/death_final"}

#Delete now if no death animation
execute if data entity @s {item:{tag:{data:{anims:{death:{time:0}}}}}} run function ml_aj:model/death_final
