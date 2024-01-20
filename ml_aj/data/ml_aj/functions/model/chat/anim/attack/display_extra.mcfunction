## function ml_aj:model/chat/anim/attack/display_final
## player context
## "id": The model's UUID string
## "badge": The model's badge id
## "select": The animation selection type

function ml_aj:system/player/chat_clear

tellraw @s [{"text":"","color":"#C29C54"},{"text":"------------ Attack Animations ------------\n"}]

tag @s add ml_aj.display_target
$execute as $(id) run function ml_aj:model/chat/anim/attack/check
tag @s remove ml_aj.display_target

$tellraw @s [{"text":"\n---------------------------------------\n\n","color":"#C29C54"},{"text":" [Add Animation] ","color":"dark_purple","hoverEvent":{"action":"show_text","contents":"Click to add an attack animation name (When the command shows up in your chat, edit the value between the quotation marks, and press Enter)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:edit/attack {name:\"Set Name Here\"}"}},{"text":"\n\n"},{"text":" Animation Selection: ","hoverEvent":{"action":"show_text","contents":"If the attack animation should be selected randomly or in order when the mob attacks"}},{"text":" [$(select)] ","color":"green","hoverEvent":{"action":"show_text","contents":"Click to Toggle"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/edit_select {id:\"$(id)\",select:\"$(select)\"}"}},{"text":"\n\n---------------------------------------\n\n","color":"#C29C54"},{"text":" [Return] ","color":"#DD743B","hoverEvent":{"action":"show_text","contents":"Return to Animations menu"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/display {id:\"$(id)\"}"}},{"text":"\n"}]
