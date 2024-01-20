## ml_aj.vehicle entity context
## "command": The command to execute

scoreboard players operation #ml_temp ml_aj.temp = @s ml_aj.id
$execute as @e[tag=aj.rig_root] if score @s ml_aj.id = #ml_temp ml_aj.temp at @s run $(command)
