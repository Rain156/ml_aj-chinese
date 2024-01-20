## function ml_aj:spectate
## aj.rig_root entity context
## "model": The model name
## "name": The locator name

scoreboard players set #ml_temp ml_aj.check 0
$execute on passengers if entity @s[tag=aj.$(model).locator.$(name)] on origin store success score #ml_temp ml_aj.check run tag @s add ml_aj.locator_source
$execute on passengers if entity @s[tag=aj.$(model).locator_origin.$(name)] on origin store success score #ml_temp ml_aj.check run tag @s add ml_aj.locator_source
$execute on passengers if entity @s[tag=aj.$(model).camera.$(name)] on origin store success score #ml_temp ml_aj.check run tag @s add ml_aj.locator_source
$execute on passengers if entity @s[tag=aj.$(model).camera_origin.$(name)] on origin store success score #ml_temp ml_aj.check run tag @s add ml_aj.locator_source

execute if score #ml_temp ml_aj.check matches 1 run gamemode spectator @p[tag=ml_aj.locator_target]
execute if score #ml_temp ml_aj.check matches 1 run spectate @e[tag=ml_aj.locator_source,limit=1,sort=nearest] @p[tag=ml_aj.locator_target]
execute if score #ml_temp ml_aj.check matches 1 run tag @e remove ml_aj.locator_source

return run scoreboard players get #ml_temp ml_aj.check
