## function ml_aj:model/chat/anim/custom/display_extra
## aj.rig_root entity context

execute unless data entity @s item.tag.data.anims.custom[0] run tellraw @p[tag=ml_aj.display_target] [{"text":" 未设置任何自定义动画.","color":"#C29C54"}]

execute if data entity @s item.tag.data.anims.custom[0] run function ml_aj:model/chat/anim/custom/loop with storage ml_aj:logic data.player.temp.loop
