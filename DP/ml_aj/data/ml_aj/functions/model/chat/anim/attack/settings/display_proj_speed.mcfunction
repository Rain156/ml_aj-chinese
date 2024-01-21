## function ml_aj:model/chat/anim/attack/settings/display_final
## aj.rig_root entity context
## "id": The model's UUID string
## "index": The animation index
## "proj_speed": The projectile speed

$data modify storage ml_aj:logic data.player.temp.proj_speed set value [{"text":"  |  "},{"text":" 速度: ","hoverEvent":{"action":"show_text","contents":"弹射物的速度"}},{"text":" ▼ ","color":"green","hoverEvent":{"action":"show_text","contents":"降低弹射物速度"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_speed {index:$(index),id:\"$(id)\",speed:$(proj_speed),action:0}"}},{"text":"$(proj_speed)","color":"yellow"},{"text":" ▲ ","color":"green","hoverEvent":{"action":"show_text","contents":"增加弹射物速度"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_speed {index:$(index),id:\"$(id)\",speed:$(proj_speed),action:1}"}}]
