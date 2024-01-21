## function ml_aj:ai/attack/select
## aj.rig_root entity context

data modify storage ml_aj:logic data.temp.ai.anim set from storage ml_aj:logic data.attack_z

#Set the guard target in case of guard execute
data modify storage ml_aj:logic data.temp.ai.anim.entity set from entity @s item.tag.data.target
execute if entity @s[tag=ml_aj.is_hostile] unless data storage ml_aj:logic {data:{temp:{ai:{anim:{time:0}}}}} run function ml_aj:ai/attack/execute with storage ml_aj:logic data.temp.ai.anim
execute if entity @s[tag=ml_aj.is_guard,tag=!ml_aj.is_hostile] unless data storage ml_aj:logic {data:{temp:{ai:{anim:{time:0}}}}} run function ml_aj:ai/attack/custom/execute with storage ml_aj:logic data.temp.ai.anim
