## function ml_ces:event/schedule/clear_all

schedule clear ml_ces:system/event/schedule/execute
data modify storage ml_ces:logic data.schedule.current set value []
function ml_ces:system/player/chat_clear
tellraw @s {"text":"[MLCES] The scheduled events have been cleared.\n","color":"green"}
