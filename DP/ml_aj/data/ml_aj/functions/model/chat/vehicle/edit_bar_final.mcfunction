## aj.rig_root entity context
## "bar": If the health bar is visible
## "scale": The Y scale

$data modify entity @s item.tag.data.bar set value $(bar)
$data modify entity @s transformation.scale[0] set value $(bar)f
$data modify entity @s transformation.scale[1] set value $(scale)f

execute unless data entity @s {item:{tag:{data:{bar:1}}}} run return 1

data modify entity @s item.tag.data.health set from entity @s item.tag.data.health_max
#Place current health in #ml_aj_damage ml_aj.temp and max health in #ml_aj_damage ml_aj.check
execute store result score #ml_aj_damage ml_aj.temp run data get entity @s item.tag.data.health_max
execute store result score #ml_aj_damage ml_aj.check run data get entity @s item.tag.data.health_max

execute if data entity @s {item:{tag:{data:{bar:1}}}} run function ml_aj:ai/health_bar/update

return 1
