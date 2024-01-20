## player context

scoreboard players set @s ml_aj.spawn 0

execute as @e[tag=ml_aj.spawn,distance=..20] positioned as @s run function ml_aj:model/spawn/egg_final
