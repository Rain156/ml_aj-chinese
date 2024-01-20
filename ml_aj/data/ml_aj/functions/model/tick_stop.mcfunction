## aj.rig_root entity context

execute unless entity @s[tag=ml_aj.has_vehicle] run return 0
execute unless entity @s[tag=ml_aj.has_rotation] run return 0

tag @s remove ml_aj.ticking
function ml_ces:event/tick/clear

return 1
