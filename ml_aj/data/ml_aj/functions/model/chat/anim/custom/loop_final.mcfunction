## function ml_aj:model/chat/anim/custom/loop
## aj.rig_root entity context
## "id": The model's UUID string
## "index": The animation index
## "name": The animation name
## "badge": The badge id

$tellraw @p[tag=ml_aj.display_target] [{"text":"","color":"#C29C54"},{"text":" [X] ","color":"red","hoverEvent":{"action":"show_text","contents":"单击删除名为: '$(name)' 的自定义动画"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/custom/delete {id:\"$(id)\",index:$(index)}"}},{"text":"-"},{"text":" [播放] ","color":"light_purple","hoverEvent":{"action":"show_text","contents":"获取播放 '$(name)' 动画的命令.\n(注: 仅适用于此实体,不适用于从此实体生成的模型)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:play {id:$(badge),name:\"$(name)\"}"}},{"text":"-"},{"text":" [定格] ","color":"#5252e1","hoverEvent":{"action":"show_text","contents":"获取播放 '$(name)' 动画一次并将其保持在末帧的命令. \n(注: 仅适用于此实体,不适用于从此实体生成的模型)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:hold {id:$(badge),name:\"$(name)\"}"}},{"text":"-"},{"text":" [循环] ","color":"dark_purple","hoverEvent":{"action":"show_text","contents":"获取循环播放 '$(name)' 动画的命令.\n(注: 仅适用于此实体,不适用于从此实体生成的模型)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:loop {id:$(badge),name:\"$(name)\"}"}},{"text":"- \"$(name)\""}]
