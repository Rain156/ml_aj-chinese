## aj.rig_root entity context

execute if entity @s[tag=ml_aj.initialized] run return 0

tag @s add ml_aj.initialized
tag @s add ml_aj.auto_reload
tag @s add ml_aj.can_despawn

data merge entity @s {teleport_duration:0,shadow_radius:0.5f,shadow_strength:0.6f,billboard:"vertical",view_range:0.25f,brightness:{sky:15,block:15}}
data modify entity @s item merge value {id:"minecraft:red_concrete",Count:1b}
data modify entity @s item.tag.data merge value {id:"",health:20f,health_max:20f,bar:0,bar_offset:0,bar_color:-930465993,view:10,ds_type:1,ds_dist:80,damage:5,auto_reload:1,speed:3,brightness:-1,anims:{idle:{name:"idle",time:0},walk:{name:"walk",time:0},swim:{name:"swim",time:0},death:{name:"death",time:0},despawn:{name:"despawn",time:0},sit:{name:"sit",time:0},sit_idle:{name:"sit_idle",time:0},stand:{name:"stand",time:0},attack:[{name:"attack",time:0,impact:0,damage:-1,distance:3f,dist_tick:15,dir:1},{name:"attack1",time:0,impact:0,damage:-1,distance:3f,dist_tick:15,dir:1},{name:"attack2",time:0,impact:0,damage:-1,distance:3f,dist_tick:15,dir:1},{name:"attack3",time:0,impact:0,damage:-1,distance:3f,dist_tick:15,dir:1}],attack_i:-1,custom:[]}}

function ml_ces:system/data/uuid/convert
data modify entity @s item.tag.data.id set from storage ml_ces:logic data.uuid.output
data modify entity @s CustomNameVisible set value 0b

function ml_aj:model/setup/set_name
function ml_aj:model/setup/init_common

#Setup the animation data on the next tick since the uuid is processed on this tick
#This will also allow a reload to set the existing animation names before processing
function ml_ces:event/schedule/set {time:1,measure:"t",command:"function ml_aj:model/animation/setup/process with entity @s item.tag.data"}

return 1
