## player context
## "id": The model's UUID string
## "index": The custom animation index

function ml_aj:system/player/chat_clear

data modify storage ml_aj:logic data.player.temp set value {name:""}
$execute as $(id) run data modify storage ml_aj:logic data.player.temp.name set from entity @s item.tag.data.anims.custom[$(index)].name

$tellraw @s [{"text":"\n您确定要删除 ","color":"gold"},{"storage":"ml_aj:logic","nbt":"data.player.temp.name","color":"green"},{"text":" 自定义动画吗?\n"},{"text":"[确定]","color":"green","hoverEvent":{"action":"show_text","contents":"确定删除自定义动画"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/custom/delete_confirm {id:\"$(id)\",index:$(index)}"}},{"text":"  "},{"text":"[取消]","color":"red","hoverEvent":{"action":"show_text","contents":"取消删除自定义动画"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/custom/display {id:\"$(id)\"}"}},{"text":"\n"}]
