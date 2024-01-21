## player context
## "id": The model's UUID string

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"\n您确定要卸载此 Aniamted Java 模型吗?\n","color":"gold"},{"text":"[确定]","color":"green","hoverEvent":{"action":"show_text","contents":"确认卸载AJ模型"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/extra/uninstall_confirm {id:\"$(id)\"}"}},{"text":"  "},{"text":"[取消]","color":"red","hoverEvent":{"action":"show_text","contents":"取消卸载AJ模型"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/extra/display {id:\"$(id)\"}"}},{"text":"\n"}]
