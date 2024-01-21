## Set the attack target for a model
## aj.rig_root entity context
## "entity": The selector to use as the target

scoreboard players set @s ml_aj.temp 0

data remove storage ml_aj:logic data.temp.attack
data remove storage ml_ces:logic data.uuid.output
data modify entity @s item.tag.data.selector set value '$(entity)'

$execute as $(entity) run function ml_aj:ai/target/set
#Prevent failure if selector entity not found
execute unless data storage ml_aj:logic data.temp.attack.id run data modify storage ml_aj:logic data.temp.attack.id set value [I;0,0,0,0]
execute store result score @s ml_aj.temp run function ml_aj:model/vehicle/special/guard/set with storage ml_aj:logic data.temp.attack

$data modify storage ml_aj:logic data.temp.attack.selector set value '$(entity)'
execute if score @s ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"Failed to set attack target "},{"storage":"ml_aj:logic","nbt":"data.temp.attack.selector","color":"gold"},{"text":" for the target model "},{"selector":"@s","color":"gold"},{"text":". Either the target model's AI type is not set as a bee, wolf, polar bear, or iron golem, or the model's AI is set to hostile.\n"}]
