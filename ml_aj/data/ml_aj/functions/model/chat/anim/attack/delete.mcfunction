## player context
## "id": The model's UUID string
## "index": The attack animation index

function ml_aj:system/player/chat_clear

data modify storage ml_aj:logic data.player.temp set value {name:""}
$execute as $(id) run data modify storage ml_aj:logic data.player.temp.name set from entity @s item.tag.data.anims.attack[$(index)].name

$tellraw @s [{"text":"\nAre you sure you want to delete the ","color":"gold"},{"storage":"ml_aj:logic","nbt":"data.player.temp.name","color":"green"},{"text":" attack animation?\n"},{"text":"[Confirm]","color":"green","hoverEvent":{"action":"show_text","contents":"Confirm Delete"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/delete_confirm {id:\"$(id)\",index:$(index)}"}},{"text":"  "},{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","contents":"Cancel Delete"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/display {id:\"$(id)\"}"}},{"text":"\n"}]
