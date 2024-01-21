## scheduled event
## aj.rig_root entity context

execute on passengers if entity @s[tag=ml_aj.bone] run function ml_aj:model/animation/setup/reset
function ml_aj:model/setup/bones_final

data remove entity @s item.tag.data.anims.attack[{time:0}]

execute unless data entity @s {item:{tag:{data:{anims:{idle:{time:0}}}}}} run function ml_aj:model/animation/action/idle

#Start the tick function if needed
function ml_aj:model/tick_start
