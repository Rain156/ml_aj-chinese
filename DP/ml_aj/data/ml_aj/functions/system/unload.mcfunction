## Unload the datapack

tellraw @s [{"text":"\n您确定要卸载MLAJ数据包吗?\n","color":"dark_aqua"},{"text":"[确定]","color":"green","clickEvent":{"action":"run_command","value":"/function ml_aj:system/data/unload_confirm"}},{"text":"  "},{"text":"[取消]","color":"red","clickEvent":{"action":"run_command","value":"/function ml_aj:system/player/chat_clear"}},{"text":"\n"}]
