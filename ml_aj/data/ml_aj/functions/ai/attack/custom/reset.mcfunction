## aj.rig_root entity context

tag @s remove ml_aj.targeting
data remove entity @s item.tag.data.target

execute if data entity @s item.tag.data.selector run function ml_aj:ai/attack/custom/set with entity @s item.tag.data
