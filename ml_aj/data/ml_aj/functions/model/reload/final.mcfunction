## function ml_aj:model/reload/loop

tellraw @a[tag=debug] [{"text":"[MLAJ] ","color":"white"},{"text":"重载完成!\n","color":"green"}]
data remove storage ml_aj:logic data.model.reloading
data modify storage ml_aj:logic data.model.outdated set value []
