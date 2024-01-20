## aj.rig_root entity context

data modify storage ml_aj:logic data.spawn.temp set from entity @s item.tag.data
execute unless data entity @s {shadow_radius:0f} run data modify storage ml_aj:logic data.spawn.temp.shadow_radius set from entity @s shadow_radius
execute unless data entity @s {shadow_strength:0.6f} run data modify storage ml_aj:logic data.spawn.temp.shadow_strength set from entity @s shadow_strength
execute if entity @s[tag=ml_aj.has_rotation] run data modify storage ml_aj:logic data.spawn.temp.has_rotation set value 1b

#Remove unnecessary properties
data remove storage ml_aj:logic data.spawn.temp.id
data remove storage ml_aj:logic data.spawn.temp.badge
data remove storage ml_aj:logic data.spawn.temp.guard
data remove storage ml_aj:logic data.spawn.temp.health
data remove storage ml_aj:logic data.spawn.temp.mob
data remove storage ml_aj:logic data.spawn.temp.temp
execute if data storage ml_aj:logic {data:{spawn:{temp:{head:"h_head"}}}} run data remove storage ml_aj:logic data.spawn.temp.head
execute if data storage ml_aj:logic {data:{spawn:{temp:{brightness:-1}}}} run data remove storage ml_aj:logic data.spawn.temp.brightness
execute if data storage ml_aj:logic data.spawn.temp.cb unless data storage ml_aj:logic data.spawn.temp.cb.damage unless data storage ml_aj:logic data.spawn.temp.cb.death unless data storage ml_aj:logic data.spawn.temp.cb.reload run data remove storage ml_aj:logic data.spawn.temp.cb

data remove storage ml_aj:logic data.spawn.temp.anims.attack_i
execute unless data storage ml_aj:logic data.spawn.temp.anims.attack[0] run data remove storage ml_aj:logic data.spawn.temp.anims.attack
execute unless data storage ml_aj:logic data.spawn.temp.anims.custom[0] run data remove storage ml_aj:logic data.spawn.temp.anims.custom
execute if data storage ml_aj:logic {data:{spawn:{temp:{anims:{idle:{time:0}}}}}} run data remove storage ml_aj:logic data.spawn.temp.anims.idle
execute if data storage ml_aj:logic {data:{spawn:{temp:{anims:{walk:{time:0}}}}}} run data remove storage ml_aj:logic data.spawn.temp.anims.walk
execute if data storage ml_aj:logic {data:{spawn:{temp:{anims:{swim:{time:0}}}}}} run data remove storage ml_aj:logic data.spawn.temp.anims.swim
execute if data storage ml_aj:logic {data:{spawn:{temp:{anims:{death:{time:0}}}}}} run data remove storage ml_aj:logic data.spawn.temp.anims.death
execute if data storage ml_aj:logic {data:{spawn:{temp:{anims:{despawn:{time:0}}}}}} run data remove storage ml_aj:logic data.spawn.temp.anims.despawn
execute if data storage ml_aj:logic {data:{spawn:{temp:{anims:{sit:{time:0}}}}}} run data remove storage ml_aj:logic data.spawn.temp.anims.sit
execute if data storage ml_aj:logic {data:{spawn:{temp:{anims:{sit_idle:{time:0}}}}}} run data remove storage ml_aj:logic data.spawn.temp.anims.sit_idle
execute if data storage ml_aj:logic {data:{spawn:{temp:{anims:{stand:{time:0}}}}}} run data remove storage ml_aj:logic data.spawn.temp.anims.stand
