## aj.rig_root entity context

#Used also for re-initializing the health bar

data merge entity @s {interpolation_duration:0,start_interpolation:0,transformation:{scale:[0f,0.0f,0.01f],translation:[0f,0f,0f]}}
execute if data entity @s {item:{tag:{data:{bar:1}}}} run data modify entity @s transformation.scale set value [1f,0.15f,0.01f]
function ml_aj:model/vehicle/bar_offset
