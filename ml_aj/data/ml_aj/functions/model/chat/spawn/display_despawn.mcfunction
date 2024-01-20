## function ml_aj:model/chat/display
## aj.rig_root entity context
## "id": The model's UUID string
## "ds_dist": The despawn distance

execute if data entity @s {item:{tag:{data:{ds_type:0}}}} run data modify storage ml_aj:logic data.player.temp.despawn set value "Delete"
execute if data entity @s {item:{tag:{data:{ds_type:1}}}} run data modify storage ml_aj:logic data.player.temp.despawn set value "Disable"

$data modify storage ml_aj:logic data.player.temp.despawn_text set value [{"text":" | "},{"text":" Distance: ","hoverEvent":{"action":"show_text","contents":"When no players are found within this distance range, the model will disable or delete itself (Note: a really high distance may prevent the model from despawning if the chunk is unloaded due to the player's chunk render distance)"}},{"text":" ▼ ","color":"green","hoverEvent":{"action":"show_text","contents":"Decrease the despawn distance"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/spawn/edit_distance {id:\"$(id)\",distance:$(ds_dist),action:0}"}},{"text":"$(ds_dist) blocks","color":"yellow"},{"text":" ▲ ","color":"green","hoverEvent":{"action":"show_text","contents":"Increase the despawn distance"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/spawn/edit_distance {id:\"$(id)\",distance:$(ds_dist),action:1}"}}]
