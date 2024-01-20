## player context
## "id": The model's UUID string

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"\nAre you sure you want to delete this Animated Java Model?\n","color":"gold"},{"text":"[Confirm]","color":"green","hoverEvent":{"action":"show_text","contents":"Confirm Delete"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/delete_confirm {id:\"$(id)\"}"}},{"text":"  "},{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","contents":"Cancel Delete"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/display {id:\"$(id)\"}"}},{"text":"\n"}]
