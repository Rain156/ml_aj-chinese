## function ml_aj:model/chat/anim/attack/settings/display_final
## aj.rig_root entity context
## "id": The model's UUID string
## "index": The animation index
## "proj_speed": The projectile speed

$data modify storage ml_aj:logic data.player.temp.proj_speed set value [{"text":"  |  "},{"text":" Speed: ","hoverEvent":{"action":"show_text","contents":"The speed of the projectile"}},{"text":" ▼ ","color":"green","hoverEvent":{"action":"show_text","contents":"Decrease the projectile speed"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_speed {index:$(index),id:\"$(id)\",speed:$(proj_speed),action:0}"}},{"text":"$(proj_speed)","color":"yellow"},{"text":" ▲ ","color":"green","hoverEvent":{"action":"show_text","contents":"Increase the projectile speed"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_speed {index:$(index),id:\"$(id)\",speed:$(proj_speed),action:1}"}}]
