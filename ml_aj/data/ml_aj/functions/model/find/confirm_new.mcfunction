## player context
## "id": The UUID of the target model entity

#Badge setup should only run once for the lifetime of this model
$execute as @e[tag=aj.rig_root,distance=..10] if data entity @s {UUID:$(id)} store result entity @s item.tag.data.badge int 1 run scoreboard players add #ml_global ml_aj.id 1
$execute as @e[tag=aj.rig_root,distance=..10] if data entity @s {UUID:$(id)} run scoreboard players operation @s ml_aj.id = #ml_global ml_aj.id

$function ml_aj:model/find/confirm {id:"$(id)"}
