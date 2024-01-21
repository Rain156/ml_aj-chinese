## aj.rig_root entity context

function ml_ces:event/schedule/clear {event:"ml_aj.attack_callback"}
function ml_ces:event/schedule/clear {event:"ml_aj.end_attack"}
function ml_ces:event/schedule/clear {event:"ml_aj.stop_anim_z"}

function ml_aj:model/vehicle/execute {command:'function ml_ces:event/schedule/clear {event:"ml_aj.attack_projectile"}'}

#Check targets
execute if data entity @s item.tag.data.temp.event_cb run data modify storage ml_aj:logic data.temp.cancel set from entity @s item.tag.data.temp.event_cb
execute if data entity @s item.tag.data.temp.event_cb run function ml_aj:ai/attack/cancel_event with storage ml_aj:logic data.temp
execute if data entity @s item.tag.data.temp.event_impact run data modify storage ml_aj:logic data.temp.cancel set from entity @s item.tag.data.temp.event_impact
execute if data entity @s item.tag.data.temp.event_impact run function ml_aj:ai/attack/cancel_event with storage ml_aj:logic data.temp

data remove storage ml_aj:logic data.temp.cancel
