## player context
## "id": The model's UUID string
## "name": The save name

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"","color":"#C29C54"},{"text":"\nSave data already exists for the name '"},{"text":"$(name)","color":"red"},{"text":"'. Are you sure you want to overwrite the data for this model?\n"},{"text":"[Confirm]","color":"green","hoverEvent":{"action":"show_text","contents":"Confirm Overwrite"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/spawn/save_confirm {id:\"$(id)\",name:\"$(name)\"}"}},{"text":"  "},{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","contents":"Cancel Overwrite"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/spawn/display {id:\"$(id)\"}"}},{"text":"\n"}]
