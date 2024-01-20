## function ml_aj:model/reload/check

data modify storage ml_aj:logic data.model.reloading set value 1b
tellraw @a[tag=debug] [{"text":"\n[MLAJ] ","color":"white"},{"text":"Reloading Outdated AJ Models...","color":"green"}]
function ml_aj:model/reload/loop
