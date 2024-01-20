## function ml_ces:event/schedule/clear_all

data modify storage ml_ces:logic data.event.tick.current set value []
function ml_ces:system/player/chat_clear
tellraw @s {"text":"[MLCES] The tick events have been cleared.\n","color":"green"}
