## aj.rig_root entity context

data modify storage ml_aj:logic data.temp.bones set value {view_range:1f,teleport_duration:2}
execute store result storage ml_aj:logic data.temp.bones.view_range float 0.1 run data get entity @s item.tag.data.view

data modify entity @s teleport_duration set value 2
execute on passengers if entity @s[tag=ml_aj.bone] run data modify entity @s {} merge from storage ml_aj:logic data.temp.bones
