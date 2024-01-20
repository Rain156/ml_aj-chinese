## aj.rig_root entity context

execute if entity @s[tag=ml_aj.ticking] run return 0
execute if entity @s[tag=ml_aj.invalid] run return 0
execute if entity @s[tag=!ml_aj.has_vehicle,tag=!ml_aj.has_rotation] run return 0

tag @s add ml_aj.ticking
function ml_ces:event/tick/set {command:"function ml_aj:model/tick"}

return 1
