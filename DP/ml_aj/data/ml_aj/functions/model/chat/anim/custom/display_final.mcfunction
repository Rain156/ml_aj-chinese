## function ml_aj:model/chat/anim/custom/display
## aj.rig_root entity context
## "id": The model's UUID string

data modify storage ml_aj:logic data.player.temp.idle set from entity @s item.tag.data.anims.idle.name
data modify storage ml_aj:logic data.player.temp.idle_text set from storage ml_aj:logic data.player.temp.idle
data modify storage ml_aj:logic data.player.temp.walk set from entity @s item.tag.data.anims.walk.name
data modify storage ml_aj:logic data.player.temp.walk_text set from storage ml_aj:logic data.player.temp.walk
data modify storage ml_aj:logic data.player.temp.swim set from entity @s item.tag.data.anims.swim.name
data modify storage ml_aj:logic data.player.temp.swim_text set from storage ml_aj:logic data.player.temp.swim
data modify storage ml_aj:logic data.player.temp.death set from entity @s item.tag.data.anims.death.name
data modify storage ml_aj:logic data.player.temp.death_text set from storage ml_aj:logic data.player.temp.death

execute if data entity @s {item:{tag:{data:{anims:{idle:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.idle set value "None Found"
execute if data entity @s {item:{tag:{data:{anims:{walk:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.walk set value "None Found"
execute if data entity @s {item:{tag:{data:{anims:{swim:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.swim set value "None Found"
execute if data entity @s {item:{tag:{data:{anims:{death:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.death set value "None Found"
