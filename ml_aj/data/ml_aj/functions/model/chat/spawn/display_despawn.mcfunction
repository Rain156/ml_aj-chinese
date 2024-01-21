## function ml_aj:model/chat/display
## aj.rig_root entity context
## "id": The model's UUID string
## "ds_dist": The despawn distance

execute if data entity @s {item:{tag:{data:{ds_type:0}}}} run data modify storage ml_aj:logic data.player.temp.despawn set value "Delete"
execute if data entity @s {item:{tag:{data:{ds_type:1}}}} run data modify storage ml_aj:logic data.player.temp.despawn set value "Disable"

$data modify storage ml_aj:logic data.player.temp.despawn_text set value [{"text":" | "},{"text":" 范围: ","hoverEvent":{"action":"show_text","contents":"当在此值的区域范围内找不到玩家时,模型将删除自身或禁用."}},{"text":" ▼ ","color":"green","hoverEvent":{"action":"show_text","contents":"减少清除模型距离"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/spawn/edit_distance {id:\"$(id)\",distance:$(ds_dist),action:0}"}},{"text":"$(ds_dist) blocks","color":"yellow"},{"text":" ▲ ","color":"green","hoverEvent":{"action":"show_text","contents":"增加模型清除距离"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/spawn/edit_distance {id:\"$(id)\",distance:$(ds_dist),action:1}"}}]
