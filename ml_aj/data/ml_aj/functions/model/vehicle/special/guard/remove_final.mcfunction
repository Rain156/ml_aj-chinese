## function ml_aj:model/vehicle/special/guard/remove
## ml_aj.vehicle entity context

tag @s remove ml_aj.has_target
attribute @s minecraft:generic.follow_range base set 0
function ml_ces:event/schedule/set {time:10,measure:"t",command:'attribute @s minecraft:generic.follow_range base set 16'}
