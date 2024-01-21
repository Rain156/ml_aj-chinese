## function ml_ces:event/player/interact/clear_all

data modify storage ml_ces:logic data.event.player.interact.current set value []
function ml_ces:system/player/chat_clear
tellraw @s {"text":"[MLCES] The player interact events have been cleared.\n","color":"green"}
