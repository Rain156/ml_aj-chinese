## function ml_aj:model/setup/init
## aj.rig_root entity context
## "name": The model name

$execute on passengers if entity @s[tag=aj.$(name).camera] run tag @s add ml_aj.locator
$execute on passengers if entity @s[tag=aj.$(name).camera_origin] run tag @s add ml_aj.locator
execute on passengers if entity @s[tag=ml_aj.locator] run tag @s add ml_aj.camera

$execute on passengers if entity @s[tag=aj.$(name).locator] run tag @s add ml_aj.locator
$execute on passengers if entity @s[tag=aj.$(name).locator_origin] run tag @s add ml_aj.locator

execute on passengers if entity @s[tag=ml_aj.locator] on vehicle run tag @s add ml_aj.has_locator
