## function ml_aj:model/chat/extra/edit_rotation
## aj.rig_root entity context

tag @s add ml_aj.has_rotation
execute unless data entity @s item.tag.data.head run data modify entity @s item.tag.data.head set value "h_head"
function ml_aj:model/tick_start
