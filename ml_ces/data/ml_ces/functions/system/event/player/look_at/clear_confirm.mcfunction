## function ml_ces:event/player/look_at/clear_all

data modify storage ml_ces:logic data.event.player.look_at.current set value []
function ml_ces:system/player/chat_clear
tellraw @s {"text":"[MLCES] The player look-at events have been cleared.\n","color":"green"}
