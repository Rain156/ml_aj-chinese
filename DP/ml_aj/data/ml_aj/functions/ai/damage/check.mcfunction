## advancement ml_aj:player/attack
## player context

advancement revoke @s only ml_aj:player/attack

tag @s add ml_aj.attacker
execute as @e[tag=ml_aj.hitbox,distance=..20] if data entity @s {HurtTime:10s,Invulnerable:0b} at @s run function ml_aj:ai/damage/verify
tag @s remove ml_aj.attacker
