## function ml_aj:ai/attack/custom/check
## aj.rig_root entity context
## "guard": The guard target's UUID

data remove storage ml_aj:logic data.temp.guard
$execute as @e[nbt={UUID:$(guard)}] run function ml_ces:system/data/uuid/convert
execute if data storage ml_ces:logic data.uuid.output run data modify entity @s item.tag.data.target set from storage ml_ces:logic data.uuid.output
