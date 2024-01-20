## function ml_aj:model/reload/loop

tellraw @a[tag=debug] [{"text":"[MLAJ] ","color":"white"},{"text":"Reload Complete!\n","color":"green"}]
data remove storage ml_aj:logic data.model.reloading
data modify storage ml_aj:logic data.model.outdated set value []
