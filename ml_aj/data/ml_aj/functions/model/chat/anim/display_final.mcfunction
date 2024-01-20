## function ml_aj:model/chat/anim/display
## aj.rig_root entity context
## "id": The model's UUID string

data modify storage ml_aj:logic data.player.temp.idle set from entity @s item.tag.data.anims.idle.name
data modify storage ml_aj:logic data.player.temp.idle_text set from storage ml_aj:logic data.player.temp.idle
data modify storage ml_aj:logic data.player.temp.walk set from entity @s item.tag.data.anims.walk.name
data modify storage ml_aj:logic data.player.temp.walk_text set from storage ml_aj:logic data.player.temp.walk
data modify storage ml_aj:logic data.player.temp.run set from entity @s item.tag.data.anims.run.name
data modify storage ml_aj:logic data.player.temp.run_text set from storage ml_aj:logic data.player.temp.run
data modify storage ml_aj:logic data.player.temp.swim set from entity @s item.tag.data.anims.swim.name
data modify storage ml_aj:logic data.player.temp.swim_text set from storage ml_aj:logic data.player.temp.swim
data modify storage ml_aj:logic data.player.temp.death set from entity @s item.tag.data.anims.death.name
data modify storage ml_aj:logic data.player.temp.death_text set from storage ml_aj:logic data.player.temp.death
data modify storage ml_aj:logic data.player.temp.despawn set from entity @s item.tag.data.anims.despawn.name
data modify storage ml_aj:logic data.player.temp.despawn_text set from storage ml_aj:logic data.player.temp.despawn
data modify storage ml_aj:logic data.player.temp.sit set from entity @s item.tag.data.anims.sit.name
data modify storage ml_aj:logic data.player.temp.sit_text set from storage ml_aj:logic data.player.temp.sit
data modify storage ml_aj:logic data.player.temp.sit_idle set from entity @s item.tag.data.anims.sit_idle.name
data modify storage ml_aj:logic data.player.temp.sit_idle_text set from storage ml_aj:logic data.player.temp.sit_idle
data modify storage ml_aj:logic data.player.temp.stand set from entity @s item.tag.data.anims.stand.name
data modify storage ml_aj:logic data.player.temp.stand_text set from storage ml_aj:logic data.player.temp.stand

execute if data entity @s {item:{tag:{data:{anims:{idle:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.idle set value "None Found"
execute if data entity @s {item:{tag:{data:{anims:{idle:{name:""}}}}}} run data modify storage ml_aj:logic data.player.temp.idle_text set value "Set Name Here"
execute if data entity @s {item:{tag:{data:{anims:{walk:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.walk set value "None Found"
execute if data entity @s {item:{tag:{data:{anims:{walk:{name:""}}}}}} run data modify storage ml_aj:logic data.player.temp.walk_text set value "Set Name Here"
execute if data entity @s {item:{tag:{data:{anims:{swim:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.swim set value "None Found"
execute if data entity @s {item:{tag:{data:{anims:{swim:{name:""}}}}}} run data modify storage ml_aj:logic data.player.temp.swim_text set value "Set Name Here"
execute if data entity @s {item:{tag:{data:{anims:{death:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.death set value "None Found"
execute if data entity @s {item:{tag:{data:{anims:{death:{name:""}}}}}} run data modify storage ml_aj:logic data.player.temp.death_text set value "Set Name Here"
execute if data entity @s {item:{tag:{data:{anims:{despawn:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.despawn set value "None Found"
execute if data entity @s {item:{tag:{data:{anims:{despawn:{name:""}}}}}} run data modify storage ml_aj:logic data.player.temp.despawn_text set value "Set Name Here"
execute if data entity @s {item:{tag:{data:{anims:{sit:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.sit set value "None Found"
execute if data entity @s {item:{tag:{data:{anims:{sit:{name:""}}}}}} run data modify storage ml_aj:logic data.player.temp.sit_text set value "Set Name Here"
execute if data entity @s {item:{tag:{data:{anims:{sit_idle:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.sit_idle set value "None Found"
execute if data entity @s {item:{tag:{data:{anims:{sit_idle:{name:""}}}}}} run data modify storage ml_aj:logic data.player.temp.sit_idle_text set value "Set Name Here"
execute if data entity @s {item:{tag:{data:{anims:{stand:{time:0}}}}}} run data modify storage ml_aj:logic data.player.temp.stand set value "None Found"
execute if data entity @s {item:{tag:{data:{anims:{stand:{name:""}}}}}} run data modify storage ml_aj:logic data.player.temp.stand_text set value "Set Name Here"

execute if data entity @s {item:{tag:{data:{vehicle:{hostile:1}}}}} run data modify storage ml_aj:logic data.player.temp.hostile set value 1b
execute if entity @s[tag=ml_aj.is_pet] run data modify storage ml_aj:logic data.player.temp.pet set value 1b
