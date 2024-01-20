## player context
## "id": The model's UUID string

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"\nAre you sure you want to uninstall this Animated Java Model?\n","color":"gold"},{"text":"[Confirm]","color":"green","hoverEvent":{"action":"show_text","contents":"Confirm Uninstall"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/extra/uninstall_confirm {id:\"$(id)\"}"}},{"text":"  "},{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","contents":"Cancel Uninstall"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/extra/display {id:\"$(id)\"}"}},{"text":"\n"}]
