## function ml_aj:ai/attack/execute
## aj.rig_root entity context
## "time": The animation time
## "impact": The impact time

$data modify storage ml_aj:logic data.temp.ai.anim.callback set value {id:"",command:'',time:$(time),impact:$(impact),now:0,timing:0,entity:0}
data modify storage ml_aj:logic data.temp.ai.anim.callback.id set from entity @s item.tag.data.id
data modify storage ml_aj:logic data.temp.ai.anim.callback.command set from storage ml_aj:logic data.temp.ai.anim.command
data modify storage ml_aj:logic data.temp.ai.anim.callback.timing set from storage ml_aj:logic data.temp.ai.anim.cmd_time
data modify storage ml_aj:logic data.temp.ai.anim.callback.entity set from storage ml_aj:logic data.temp.ai.anim.cmd_entity

#Check if using the impact time
$execute if data storage ml_aj:logic {data:{temp:{ai:{anim:{callback:{timing:1}}}}}} run data modify storage ml_aj:logic data.temp.ai.anim.callback.time set value $(impact)
#Check if the impact time is at the first frame
$execute if data storage ml_aj:logic {data:{temp:{ai:{anim:{callback:{timing:1,now:$(impact)}}}}}} run data modify storage ml_aj:logic data.temp.ai.anim.callback.timing set value 0

#Run callback now if needed
tag @s add aj.rig_root_attacker
execute if data storage ml_aj:logic {data:{temp:{ai:{anim:{callback:{timing:0,entity:0}}}}}} run function ml_aj:system/entity/callback with storage ml_aj:logic data.temp.ai.anim.callback
execute if data storage ml_aj:logic {data:{temp:{ai:{anim:{callback:{timing:0,entity:1}}}}}} as @e[tag=ml_aj.attack_target] run function ml_aj:system/entity/callback with storage ml_aj:logic data.temp.ai.anim.callback
tag @s remove aj.rig_root_attacker

#Run callback at impact time if needed, using random int for event name
execute store result storage ml_aj:logic data.temp.ai.anim.callback.rnd int 1 run random value 0..1000
execute unless data storage ml_aj:logic {data:{temp:{ai:{anim:{callback:{timing:0}}}}}} if data storage ml_aj:logic {data:{temp:{ai:{anim:{callback:{entity:0}}}}}} run function ml_aj:ai/attack/callback_final with storage ml_aj:logic data.temp.ai.anim.callback
execute unless data storage ml_aj:logic {data:{temp:{ai:{anim:{callback:{timing:0}}}}}} if data storage ml_aj:logic {data:{temp:{ai:{anim:{callback:{entity:1}}}}}} run data modify entity @s item.tag.data.temp.event_cb set from storage ml_aj:logic data.temp.ai.anim.callback.rnd
execute unless data storage ml_aj:logic {data:{temp:{ai:{anim:{callback:{timing:0}}}}}} if data storage ml_aj:logic {data:{temp:{ai:{anim:{callback:{entity:1}}}}}} as @e[tag=ml_aj.attack_target] run function ml_aj:ai/attack/callback_final_entity with storage ml_aj:logic data.temp.ai.anim.callback
