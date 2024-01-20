## player context
## "id": The model's UUID string

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"\nAre you sure you want to remove the pet owner from this model?\n","color":"gold"},{"text":"[Confirm]","color":"green","hoverEvent":{"action":"show_text","contents":"Confirm Owner Remove"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/pet_remove_confirm {id:\"$(id)\"}"}},{"text":"  "},{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","contents":"Cancel Owner Remove"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/display {id:\"$(id)\"}"}},{"text":"\n"}]
