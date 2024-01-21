## player context
## "id": The model's UUID string

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"\n您确定要删除此Animated Java模型吗?\n","color":"gold"},{"text":"[确定]","color":"green","hoverEvent":{"action":"show_text","contents":"确认删除AJ模型"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/delete_confirm {id:\"$(id)\"}"}},{"text":"  "},{"text":"[取消]","color":"red","hoverEvent":{"action":"show_text","contents":"取消删除AJ模型"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/display {id:\"$(id)\"}"}},{"text":"\n"}]
