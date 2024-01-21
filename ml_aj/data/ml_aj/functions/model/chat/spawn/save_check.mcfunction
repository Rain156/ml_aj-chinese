## player context
## "id": The model's UUID string
## "name": The save name

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"","color":"#C29C54"},{"text":"\n名称为: '"},{"text":"$(name)","color":"red"},{"text":"' 的模型已存在保存的数据,您确定要覆盖此模型的数据吗?\n"},{"text":"[确定]","color":"green","hoverEvent":{"action":"show_text","contents":"确认覆盖模型配置"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/spawn/save_confirm {id:\"$(id)\",name:\"$(name)\"}"}},{"text":"  "},{"text":"[取消]","color":"red","hoverEvent":{"action":"show_text","contents":"取消覆盖模型配置"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/spawn/display {id:\"$(id)\"}"}},{"text":"\n"}]
