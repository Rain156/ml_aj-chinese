## function ml_aj:model/chat/anim/custom/loop
## aj.rig_root entity context
## "id": The model's UUID string
## "index": The animation index
## "name": The animation name
## "badge": The badge id

$tellraw @p[tag=ml_aj.display_target] [{"text":"","color":"#C29C54"},{"text":" [X] ","color":"red","hoverEvent":{"action":"show_text","contents":"Click to delete the $(name) custom animation"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/custom/delete {id:\"$(id)\",index:$(index)}"}},{"text":"-"},{"text":" [Play] ","color":"light_purple","hoverEvent":{"action":"show_text","contents":"Get the command to play the $(name) animation once. Note: Only applies to this entity, not models spawned from this one."},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:play {id:$(badge),name:\"$(name)\"}"}},{"text":"-"},{"text":" [Hold] ","color":"#5252e1","hoverEvent":{"action":"show_text","contents":"Get the command to play the $(name) animation once and hold it at the last frame. Note: Only applies to this entity, not models spawned from this one."},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:hold {id:$(badge),name:\"$(name)\"}"}},{"text":"-"},{"text":" [Loop] ","color":"dark_purple","hoverEvent":{"action":"show_text","contents":"Get the command to loop the $(name) animation. Note: Only applies to this entity, not models spawned from this one."},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:loop {id:$(badge),name:\"$(name)\"}"}},{"text":"- \"$(name)\""}]
