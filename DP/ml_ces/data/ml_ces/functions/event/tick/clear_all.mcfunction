## Clear all tick events for the entities that were set with the ml_ces:event/tick/set function

tellraw @s [{"text":"\n[MLCES] Are you sure you want to clear all tick events that were set by the ml_ces:event/tick/set function? ","color":"dark_aqua"},{"text":"[Confirm]","color":"green","clickEvent":{"action":"run_command","value":"/function ml_ces:system/event/tick/clear_confirm"}},{"text":"  "},{"text":"[Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/function ml_ces:system/player/chat_clear"}},{"text":"\n"}]
