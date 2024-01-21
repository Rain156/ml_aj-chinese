## player context
## "id": The model's UUID string

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"\n您确定要删除这个宠物的所有者吗?\n","color":"gold"},{"text":"[确定]","color":"green","hoverEvent":{"action":"show_text","contents":"确认删除所有者"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/pet_remove_confirm {id:\"$(id)\"}"}},{"text":"  "},{"text":"[取消]","color":"red","hoverEvent":{"action":"show_text","contents":"取消删除所有者"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/display {id:\"$(id)\"}"}},{"text":"\n"}]
