## player context
## "id": The model's UUID string

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"\n您确定要删除此模型当前的生物AI吗?\n","color":"gold"},{"text":"[确定]","color":"green","hoverEvent":{"action":"show_text","contents":"确认删除此模型现在的生物AI"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/vehicle/remove_confirm {id:\"$(id)\"}"}},{"text":"  "},{"text":"[取消]","color":"red","hoverEvent":{"action":"show_text","contents":"取消删除此模型现在的生物AI"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/vehicle/display {id:\"$(id)\"}"}},{"text":"\n"}]
