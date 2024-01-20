## function ml_aj:model/vehicle/special/guard/set_final
## ml_aj.vehicle entity context
## "guard": The guard target

tag @s add ml_aj.has_target
attribute @s minecraft:generic.follow_range base set 60

$function ml_ces:event/tick/set {command:"function ml_aj:model/vehicle/special/guard/tick {guard:$(guard)}"}

function ml_ces:event/schedule/clear {event:"ml_aj.guard_time"}
function ml_ces:event/schedule/set_named {time:60,measure:"t",command:"function ml_ces:event/tick/clear",event:"ml_aj.guard_time"}
