## function ml_ces:event/player/look_away/clear_all

data modify storage ml_ces:logic data.event.player.look_away.current set value []
function ml_ces:system/player/chat_clear
tellraw @s {"text":"[MLCES] The player look-away events have been cleared.\n","color":"green"}
