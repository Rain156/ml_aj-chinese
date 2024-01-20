## aj.rig_root entity context

execute unless entity @s[tag=ml_aj.anim_custom] run return 1

execute if data entity @s item.tag.data.temp.resume run function ml_aj:model/animation/resume with entity @s item.tag.data.temp

return 1
