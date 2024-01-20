## function ml_aj:model/find/start
## player context
## "id": The UUID of the target model entity

scoreboard players set #ml_temp ml_aj.temp 0
$execute as @e[tag=aj.rig_root,distance=..10] if data entity @s {UUID:$(id)} if entity @s[tag=ml_aj.initialized] run scoreboard players set #ml_temp ml_aj.temp 1

$execute if score #ml_temp ml_aj.temp matches 1 run function ml_aj:model/find/confirm {id:$(id)}
execute if score #ml_temp ml_aj.temp matches 1 run return 1

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"\nAre you sure you want to setup this Animated Java Model with the MLAJ System?\n","color":"gold"},{"text":"[Confirm]","color":"green","hoverEvent":{"action":"show_text","contents":"Confirm Setup"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/find/confirm_new {id:\"$(id)\"}"}},{"text":"  "},{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","contents":"Cancel Setup"},"clickEvent":{"action":"run_command","value":"/function ml_aj:system/player/chat_clear"}},{"text":"\n"}]

return 1
