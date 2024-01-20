## aj.rig_root entity context

data modify storage ml_aj:logic data.temp.tags set from entity @s Tags
function ml_aj:model/setup/set_name_loop
data modify entity @s item.tag.data.save_name set from entity @s item.tag.data.name
