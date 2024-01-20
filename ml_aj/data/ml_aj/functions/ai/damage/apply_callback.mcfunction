## function ml_aj:ai/damage/apply
## aj.rig_root entity context

tag @s add ml_aj.health_update
function ml_aj:system/entity/callback with storage ml_aj:logic data.temp

#Prevents callback from running multiple times in one tick
function ml_ces:event/schedule/set {time:1,measure:"t",command:"tag @s remove ml_aj.health_update"}
