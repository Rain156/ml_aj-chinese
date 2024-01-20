## Disables the player look events

data modify storage ml_ces:logic data.event.player.use_look set value 0b
tellraw @s {"text":"\n[MLCES] Player look events are now disabled.\n","color":"green"}
