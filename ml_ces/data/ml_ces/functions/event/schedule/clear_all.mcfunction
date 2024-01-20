## Clear all scheduled events that were set with a ml_ces:event/schedule/set function

tellraw @s [{"text":"\n[MLCES] Are you sure you want to clear all scheduled events in the MLCES datapack? ","color":"dark_aqua"},{"text":"[Confirm]","color":"green","clickEvent":{"action":"run_command","value":"/function ml_ces:system/event/schedule/clear_confirm"}},{"text":"  "},{"text":"[Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/function ml_ces:system/player/chat_clear"}},{"text":"\n"}]
