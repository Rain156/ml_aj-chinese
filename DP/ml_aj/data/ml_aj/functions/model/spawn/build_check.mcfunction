## function ml_aj:model/spawn/build
## "model": The model name

scoreboard players set #ml_temp ml_aj.temp 0
$execute as @e[tag=aj.$(model).root] if score @s aj.id = .aj.last_id aj.id run scoreboard players set #ml_temp ml_aj.temp 1

$execute if score #ml_temp ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"无法加载此模型: '"},{"text":"$(model)","color":"gold"},{"text":"'.\n"}]
