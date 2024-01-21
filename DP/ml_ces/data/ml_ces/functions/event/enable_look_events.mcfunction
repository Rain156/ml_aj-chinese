## Enables the player look events

data modify storage ml_ces:logic data.event.player.use_look set value 1b
advancement revoke @a only ml_ces:player/look_at
tellraw @s {"text":"\n[MLCES] Player look events are now enabled.\n","color":"green"}
