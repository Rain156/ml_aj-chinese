## function ml_aj:model/chat/anim/custom/display_final
## player context
## "id": The model's UUID string
## "badge": The model's badge id

function ml_aj:system/player/chat_clear

tellraw @s [{"text":"","color":"#C29C54"},{"text":"-------------- 自定义动画菜单 --------------\n"}]

tag @s add ml_aj.display_target
$execute as $(id) run function ml_aj:model/chat/anim/custom/check
tag @s remove ml_aj.display_target

$tellraw @s [{"text":"\n--------------------------------------------\n\n","color":"#C29C54"},{"text":" [添加动画] ","color":"green","hoverEvent":{"action":"show_text","contents":"单击以添加自定义动画\n(设置命令会出现在聊天栏里,只需编辑引号之间的值,然后按下回车即可)\n(注: 输入的名称必须是模型中存在的动画名称)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:edit/add {name:\"Set Name Here\"}"}},{"text":" | "},{"text":" [停止] ","color":"red","hoverEvent":{"action":"show_text","contents":"获取此实体的自定义动画停止命令.\n(注: 仅适用于此实体)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:stop {id:$(badge)}"}},{"text":" | "},{"text":" [暂停] ","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":"获取此实体的自定义动画暂停命令.\n(注: 仅适用于此实体)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:pause {id:$(badge)}"}},{"text":" | "},{"text":" [恢复] ","color":"aqua","hoverEvent":{"action":"show_text","contents":"获取此实体的自定义动画恢复命令.\n(注: 仅适用于此实体)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:resume {id:$(badge)}"}},{"text":"\n\n--------------------------------------------\n\n"},{"text":" [返回] ","color":"#DD743B","hoverEvent":{"action":"show_text","contents":"返回至动画菜单"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/display {id:\"$(id)\"}"}},{"text":"\n"}]
