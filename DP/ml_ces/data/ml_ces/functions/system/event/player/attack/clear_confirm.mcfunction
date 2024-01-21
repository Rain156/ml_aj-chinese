## function ml_ces:event/player/attack/clear_all

data modify storage ml_ces:logic data.event.player.attack.current set value []
function ml_ces:system/player/chat_clear
tellraw @s {"text":"[MLCES] The player attack events have been cleared.\n","color":"green"}
