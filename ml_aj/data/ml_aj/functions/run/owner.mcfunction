## Set the owner for a pet model
## aj.rig_root entity context
## "entity": The selector to use for the player

scoreboard players set @s ml_aj.temp 0
$execute store success score @s ml_aj.temp as $(entity) run tag @s add ml_aj.owner_target

execute if score @s ml_aj.temp matches 1 store result score @s ml_aj.temp at @s run function ml_aj:model/setup/owner
tag @a remove ml_aj.owner_target

$data modify storage ml_aj:logic data.temp.owner set value '$(entity)'
execute if score @s ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"Failed to set player owner with selector "},{"storage":"ml_aj:logic","nbt":"data.temp.owner","color":"gold"},{"text":" for the target model "},{"selector":"@s","color":"gold"},{"text":". Either that player could not be found, or the target model is not set as a Pet type mob.\n"}]
