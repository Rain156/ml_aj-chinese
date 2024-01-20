## function ml_aj:ai/damage/check
## ml_aj.hitbox entity context

data modify storage ml_aj:logic data.temp.damage.health set from entity @s Health
data modify storage ml_aj:logic data.temp.damage.motion set from entity @s Motion
execute on vehicle run data modify entity @s Health set from storage ml_aj:logic data.temp.damage.health
execute on vehicle run data modify entity @s Motion set from storage ml_aj:logic data.temp.damage.motion
execute on vehicle run function ml_aj:ai/damage/lost
