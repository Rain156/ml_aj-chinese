## Unload the datapack

tellraw @s [{"text":"\nAre you sure you want to unload the MLAJ datapack?\n","color":"dark_aqua"},{"text":"[Confirm]","color":"green","clickEvent":{"action":"run_command","value":"/function ml_aj:system/data/unload_confirm"}},{"text":"  "},{"text":"[Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/function ml_aj:system/player/chat_clear"}},{"text":"\n"}]
