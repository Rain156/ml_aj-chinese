## player context
## "id": The model's UUID string

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"\nAre you sure you want to remove the current AI for this model?\n","color":"gold"},{"text":"[Confirm]","color":"green","hoverEvent":{"action":"show_text","contents":"Confirm Remove"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/vehicle/remove_confirm {id:\"$(id)\"}"}},{"text":"  "},{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","contents":"Cancel Remove"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/vehicle/display {id:\"$(id)\"}"}},{"text":"\n"}]
