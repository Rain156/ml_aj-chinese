## function ml_aj:edit/owner
## aj.rig_root entity context

execute unless entity @p[tag=ml_aj.owner_target] run return 0

scoreboard players set #ml_temp ml_aj.temp 0
function ml_aj:model/vehicle/execute {command:"function ml_aj:model/setup/owner_final"}
execute if score #ml_temp ml_aj.temp matches 0 run return 0

#Set the owner name string
execute as @p[tag=ml_aj.owner_target,limit=1,sort=nearest] run function ml_ces:system/data/uuid/convert
data modify entity @s item.tag.data.owner set from storage ml_ces:logic data.uuid.output

return 1
