## function ml_aj:ai/attack/execute
## ml_aj.vehicle entity context
## "proj": The projectile entity type
## "proj_nbt": The projectile nbt data
## "impact": The launch time
## "random": A random rotation amount
## "target_id": A random target id
## "speed": The projectile speed

$scoreboard players set @s ml_aj.temp $(impact)
$execute if score @s ml_aj.temp matches 0 anchored eyes positioned ^ ^ ^0.001 facing entity @e[tag=ml_aj.attack_target] eyes rotated ~$(random) ~ summon minecraft:$(proj) run function ml_aj:ai/attack/projectile_final {nbt:$(proj_nbt),target_id:$(target_id),speed:$(speed)}

#Scheduled impact time
$execute unless score @s ml_aj.temp matches 0 run tag @e[tag=ml_aj.attack_target] add ml_aj.proj_target_$(target_id)
$execute unless score @s ml_aj.temp matches 0 run function ml_ces:event/schedule/set_named {time:$(impact),measure:"t",command:'execute anchored eyes positioned ^ ^ ^0.001 facing entity @e[tag=ml_aj.proj_target_$(target_id)] eyes rotated ~$(random) ~ summon minecraft:$(proj) run function ml_aj:ai/attack/projectile_final {nbt:$(proj_nbt),target_id:$(target_id),speed:$(speed)}',event:"ml_aj.attack_projectile"}
