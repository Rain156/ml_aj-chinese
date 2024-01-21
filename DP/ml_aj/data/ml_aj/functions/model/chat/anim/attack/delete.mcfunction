## player context
## "id": The model's UUID string
## "index": The attack animation index

function ml_aj:system/player/chat_clear

data modify storage ml_aj:logic data.player.temp set value {name:""}
$execute as $(id) run data modify storage ml_aj:logic data.player.temp.name set from entity @s item.tag.data.anims.attack[$(index)].name

$tellraw @s [{"text":"\n您确定要删除 ","color":"gold"},{"storage":"ml_aj:logic","nbt":"data.player.temp.name","color":"green"},{"text":" 攻击动画吗?\n"},{"text":"[确定]","color":"green","hoverEvent":{"action":"show_text","contents":"确认删除动画"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/delete_confirm {id:\"$(id)\",index:$(index)}"}},{"text":"  "},{"text":"[取消]","color":"red","hoverEvent":{"action":"show_text","contents":"取消删除动画"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/display {id:\"$(id)\"}"}},{"text":"\n"}]
