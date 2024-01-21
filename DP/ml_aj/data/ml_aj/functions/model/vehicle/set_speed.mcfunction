## aj.rig_root entity context
## "speed": The mob speed
## "mob": The vehicle UUID string

$execute as $(mob) run effect clear @s minecraft:speed
$execute as $(mob) run effect clear @s minecraft:slowness

$scoreboard players set @s ml_aj.temp $(speed)
$execute if score @s ml_aj.temp matches 0 as $(mob) run effect give @s minecraft:slowness infinite 10 true
$execute if score @s ml_aj.temp matches 1 as $(mob) run effect give @s minecraft:slowness infinite 2 true
$execute if score @s ml_aj.temp matches 2 as $(mob) run effect give @s minecraft:slowness infinite 1 true

$execute if score @s ml_aj.temp matches 4 as $(mob) run effect give @s minecraft:speed infinite 1 true
$execute if score @s ml_aj.temp matches 5 as $(mob) run effect give @s minecraft:speed infinite 2 true
$execute if score @s ml_aj.temp matches 6 as $(mob) run effect give @s minecraft:speed infinite 3 true
$execute if score @s ml_aj.temp matches 7 as $(mob) run effect give @s minecraft:speed infinite 4 true
$execute if score @s ml_aj.temp matches 8 as $(mob) run effect give @s minecraft:speed infinite 5 true
$execute if score @s ml_aj.temp matches 9 as $(mob) run effect give @s minecraft:speed infinite 6 true
$execute if score @s ml_aj.temp matches 10 as $(mob) run effect give @s minecraft:speed infinite 7 true

execute unless entity @s[tag=ml_aj.is_flying] run return 1

$execute if score @s ml_aj.temp matches 0 as $(mob) run attribute @s minecraft:generic.flying_speed base set 0
$execute if score @s ml_aj.temp matches 1 as $(mob) run attribute @s minecraft:generic.flying_speed base set 0.2
$execute if score @s ml_aj.temp matches 2 as $(mob) run attribute @s minecraft:generic.flying_speed base set 0.3
$execute if score @s ml_aj.temp matches 3 as $(mob) run attribute @s minecraft:generic.flying_speed base set 0.4
$execute if score @s ml_aj.temp matches 4 as $(mob) run attribute @s minecraft:generic.flying_speed base set 0.5
$execute if score @s ml_aj.temp matches 5 as $(mob) run attribute @s minecraft:generic.flying_speed base set 0.6
$execute if score @s ml_aj.temp matches 6 as $(mob) run attribute @s minecraft:generic.flying_speed base set 0.7
$execute if score @s ml_aj.temp matches 7 as $(mob) run attribute @s minecraft:generic.flying_speed base set 0.8
$execute if score @s ml_aj.temp matches 8 as $(mob) run attribute @s minecraft:generic.flying_speed base set 0.9
$execute if score @s ml_aj.temp matches 9 as $(mob) run attribute @s minecraft:generic.flying_speed base set 1
$execute if score @s ml_aj.temp matches 10 as $(mob) run attribute @s minecraft:generic.flying_speed base set 1.1

return 1
