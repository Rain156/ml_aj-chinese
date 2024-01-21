## function ml_aj:attack
## aj.rig_root entity context
## "id": The target's UUID

data remove entity @s item.tag.data.selector
data remove entity @s item.tag.data.target
data remove entity @s item.tag.data.guard
execute if entity @s[tag=ml_aj.is_guard] run function ml_aj:model/vehicle/execute {command:"function ml_aj:model/vehicle/special/guard/remove_final"}

return 1
