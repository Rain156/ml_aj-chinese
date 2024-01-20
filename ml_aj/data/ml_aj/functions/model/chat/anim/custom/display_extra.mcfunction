## function ml_aj:model/chat/anim/custom/display_final
## player context
## "id": The model's UUID string
## "badge": The model's badge id

function ml_aj:system/player/chat_clear

tellraw @s [{"text":"","color":"#C29C54"},{"text":"-------------- Custom Animations --------------\n"}]

tag @s add ml_aj.display_target
$execute as $(id) run function ml_aj:model/chat/anim/custom/check
tag @s remove ml_aj.display_target

$tellraw @s [{"text":"\n--------------------------------------------\n\n","color":"#C29C54"},{"text":" [Add Animation] ","color":"green","hoverEvent":{"action":"show_text","contents":"Click to add a custom animation name (When the command shows up in your chat, edit the value between the quotation marks, and press Enter)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:edit/add {name:\"Set Name Here\"}"}},{"text":" | "},{"text":" [Stop] ","color":"red","hoverEvent":{"action":"show_text","contents":"Get the command that will stop a custom animation that's playing on this model. Note: Only applies to this entity, not models spawned from this one."},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:stop {id:$(badge)}"}},{"text":" | "},{"text":" [Pause] ","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":"Get the command that will pause a custom animation that's playing on this model. Note: Only applies to this entity, not models spawned from this one."},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:pause {id:$(badge)}"}},{"text":" | "},{"text":" [Resume] ","color":"aqua","hoverEvent":{"action":"show_text","contents":"Get the command that will resume a custom animation that was playing on this model. Note: Only applies to this entity, not models spawned from this one."},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:resume {id:$(badge)}"}},{"text":"\n\n--------------------------------------------\n\n"},{"text":" [Return] ","color":"#DD743B","hoverEvent":{"action":"show_text","contents":"Return to Animations menu"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/display {id:\"$(id)\"}"}},{"text":"\n"}]
