## Clear all player look-at events

tellraw @s [{"text":"\n[MLCES] Are you sure you want to clear all player look-away events in the MLCES datapack? ","color":"dark_aqua"},{"text":"[Confirm]","color":"green","clickEvent":{"action":"run_command","value":"/function ml_ces:system/event/player/look_away/clear_confirm"}},{"text":"  "},{"text":"[Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/function ml_ces:system/player/chat_clear"}},{"text":"\n"}]
