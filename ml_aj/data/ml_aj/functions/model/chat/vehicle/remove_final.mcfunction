## aj.rig_root entity context

function ml_aj:model/vehicle/execute {command:"function ml_aj:model/vehicle/delete"}

function ml_aj:model/vehicle/refresh
data remove entity @s item.tag.data.vehicle
data remove entity @s item.tag.data.mob

tag @s add ml_aj.force_idle
function ml_aj:model/animation/action/idle

function ml_aj:model/tick_stop
