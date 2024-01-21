## function ml_ces:event/schedule/set

tellraw @a[tag=debug] {"text":"\n[MLCES] Invalid time integer used in ml_ces:event/schedule/set function call. Must be greater than 0.\n","color":"red"}
data modify storage ml_ces:logic data.schedule.temp.name set value ""
scoreboard players set #ml_temp ml_ces.temp 1
