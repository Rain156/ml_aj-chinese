## function ml_aj:model/chat/extra/edit_brightness
## aj.rig_root entity context
## "brightness": The brightness value

execute on passengers if entity @s[tag=ml_aj.bone] unless data entity @s brightness run data modify entity @s brightness set value {sky:0,block:0}
execute if data entity @s {item:{tag:{data:{brightness:-1}}}} on passengers if entity @s[tag=ml_aj.bone] run data remove entity @s brightness
$execute unless data entity @s {item:{tag:{data:{brightness:-1}}}} on passengers if entity @s[tag=ml_aj.bone] run data modify entity @s brightness.block set value $(brightness)
