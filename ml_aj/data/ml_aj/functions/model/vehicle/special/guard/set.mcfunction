## function ml_aj:attack
## Have target entity run the ml_ces:system/data/uuid/convert before this function
## aj.rig_root entity context
## "id": The target's UUID

execute if entity @s[tag=ml_aj.is_hostile] run return 0
execute unless entity @s[tag=ml_aj.is_guard] run return 0

execute if data storage ml_ces:logic data.uuid.output run data modify entity @s item.tag.data.target set from storage ml_ces:logic data.uuid.output

$function ml_aj:model/vehicle/special/guard/set_final {id:$(id)}

return 1
