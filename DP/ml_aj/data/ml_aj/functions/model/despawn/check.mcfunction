## function ml_aj:model/scan_final
## aj.rig_root entity context
## "ds_dist": The despawn distance

scoreboard players set #ml_temp ml_aj.temp 0
$execute unless entity @p[distance=..$(ds_dist)] store result score #ml_temp ml_aj.temp run function ml_aj:model/despawn/check_final

execute if score #ml_temp ml_aj.temp matches 0 if entity @s[tag=ml_aj.disabled] run function ml_aj:model/despawn/enable

return run scoreboard players get #ml_temp ml_aj.temp
