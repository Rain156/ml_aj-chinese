## aj.rig_root entity context
## "mob": The vehicle UUID string

execute if data entity @s {item:{tag:{data:{health_max:0f}}}} run tag @s add ml_aj.invulnerable
$execute if data entity @s {item:{tag:{data:{health_max:0f}}}} as $(mob) run data modify entity @s Invulnerable set value 1b
$execute if data entity @s {item:{tag:{data:{health_max:0f}}}} as $(mob) on passengers if entity @s[tag=ml_aj.hitbox] run data modify entity @s Invulnerable set value 1b

execute unless data entity @s {item:{tag:{data:{health_max:0f}}}} run tag @s remove ml_aj.invulnerable
$execute unless data entity @s {item:{tag:{data:{health_max:0f}}}} as $(mob) run data modify entity @s Invulnerable set value 0b
$execute unless data entity @s {item:{tag:{data:{health_max:0f}}}} as $(mob) on passengers if entity @s[tag=ml_aj.hitbox] run data modify entity @s Invulnerable set value 0b

function ml_aj:ai/health_bar/init
