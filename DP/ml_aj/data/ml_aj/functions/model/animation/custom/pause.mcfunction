## aj.rig_root entity context

execute unless entity @s[tag=ml_aj.anim_custom] run return 1

function ml_ces:event/schedule/clear {event:"ml_aj.stop_anim"}
function ml_ces:event/schedule/clear {event:"ml_aj.custom_anim"}
function ml_aj:model/animation/pause with entity @s item.tag.data.temp

return 1
