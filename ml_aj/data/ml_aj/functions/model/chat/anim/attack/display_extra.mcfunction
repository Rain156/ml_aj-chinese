## function ml_aj:model/chat/anim/attack/display_final
## player context
## "id": The model's UUID string
## "badge": The model's badge id
## "select": The animation selection type

function ml_aj:system/player/chat_clear

tellraw @s [{"text":"","color":"#C29C54"},{"text":"-------------- 攻击动画菜单 ---------------\n"}]

tag @s add ml_aj.display_target
$execute as $(id) run function ml_aj:model/chat/anim/attack/check
tag @s remove ml_aj.display_target

$tellraw @s [{"text":"\n---------------------------------------\n\n","color":"#C29C54"},{"text":" [添加动画] ","color":"dark_purple","hoverEvent":{"action":"show_text","contents":"单击以添加攻击动画\n(设置命令会出现在聊天栏里,只需编辑引号之间的值,然后按下回车即可)\n(注: 输入的名称必须是模型中存在的动画名称)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:edit/attack {name:\"在此处设置名称\"}"}},{"text":"\n\n"},{"text":" 动画模式选择: ","hoverEvent":{"action":"show_text","contents":"更改生物在攻击时的模式.\n使其随机执行动画或按顺序执行动画"}},{"text":" [$(select)] ","color":"green","hoverEvent":{"action":"show_text","contents":"单击切换"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/edit_select {id:\"$(id)\",select:\"$(select)\"}"}},{"text":"\n\n---------------------------------------\n\n","color":"#C29C54"},{"text":" [返回] ","color":"#DD743B","hoverEvent":{"action":"show_text","contents":"返回至动画菜单"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/display {id:\"$(id)\"}"}},{"text":"\n"}]
