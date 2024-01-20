## function ml_aj:model/chat/anim/attack/display_extra
## aj.rig_root entity context

execute unless data entity @s item.tag.data.anims.attack[0] run tellraw @p[tag=ml_aj.display_target] [{"text":" There are no attack animations set.","color":"#C29C54"}]

execute if data entity @s item.tag.data.anims.attack[0] run function ml_aj:model/chat/anim/attack/loop with storage ml_aj:logic data.player.temp.loop
