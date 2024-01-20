## Clear all player interact events

tellraw @s [{"text":"\n[MLCES] Are you sure you want to clear all player interact events in the MLCES datapack? ","color":"dark_aqua"},{"text":"[Confirm]","color":"green","clickEvent":{"action":"run_command","value":"/function ml_ces:system/event/player/interact/clear_confirm"}},{"text":"  "},{"text":"[Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/function ml_ces:system/player/chat_clear"}},{"text":"\n"}]
