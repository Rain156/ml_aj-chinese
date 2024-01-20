## function ml_aj:model/chat/anim/attack/loop
## aj.rig_root entity context
## "id": The model's UUID string
## "index": The animation index
## "name": The animation name
## "badge": The badge id

$tellraw @p[tag=ml_aj.display_target] [{"text":"","color":"#C29C54"},{"text":" [X] ","color":"red","hoverEvent":{"action":"show_text","contents":"单击删除此动画"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/delete {id:\"$(id)\",index:$(index)}"}},{"text":"-"},{"text":" \u25b2 ","color":"yellow","hoverEvent":{"action":"show_text","contents":"使此动画在列表中向上移动"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/edit_order {index:$(index),id:\"$(id)\",action:1}"}},{"text":"$(index)","color":"gold"},{"text":" \u25bc ","color":"yellow","hoverEvent":{"action":"show_text","contents":"使此动画在列表中向下移动"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/edit_order {index:$(index),id:\"$(id)\",action:0}"}},{"text":"-"},{"text":" [预览] ","color":"dark_green","hoverEvent":{"action":"show_text","contents":"预览此攻击动画"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/preview {id:\"$(id)\",index:$(index)}"}},{"text":"-"},{"text":" [设置] ","color":"aqua","hoverEvent":{"action":"show_text","contents":"编辑此攻击动画"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/display {id:\"$(id)\",index:$(index)}"}},{"text":"- \"$(name)\""}]
