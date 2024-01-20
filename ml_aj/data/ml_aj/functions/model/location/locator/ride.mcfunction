## function ml_aj:spectate
## aj.rig_root entity context
## "model": The model name
## "name": The locator name

scoreboard players set #ml_temp ml_aj.check 0
$execute on passengers if entity @s[tag=aj.$(model).locator.$(name)] on origin store success score #ml_temp ml_aj.check run ride @e[tag=ml_aj.locator_target,limit=1,sort=nearest] mount @s
$execute on passengers if entity @s[tag=aj.$(model).locator_origin.$(name)] on origin store success score #ml_temp ml_aj.check run ride @e[tag=ml_aj.locator_target,limit=1,sort=nearest] mount @s
$execute on passengers if entity @s[tag=aj.$(model).camera.$(name)] on origin store success score #ml_temp ml_aj.check run ride @e[tag=ml_aj.locator_target,limit=1,sort=nearest] mount @s
$execute on passengers if entity @s[tag=aj.$(model).camera_origin.$(name)] on origin store success score #ml_temp ml_aj.check run ride @e[tag=ml_aj.locator_target,limit=1,sort=nearest] mount @s

return run scoreboard players get #ml_temp ml_aj.check
