## function ml_aj:model/vehicle/tick/10_final
## ml_aj.vehicle entity context

data modify storage ml_aj:logic data.temp.rig.sitting set value 0b

#Check for change in sitting nbt
execute if data entity @s[tag=!ml_aj.pet_sitting] {Sitting:1b} run data modify storage ml_aj:logic data.temp.rig.sitting set value 1b
execute if data entity @s[tag=ml_aj.pet_sitting] {Sitting:0b} run data modify storage ml_aj:logic data.temp.rig.sitting set value 2b

#Check if the player right-clicked the pet with the editor item
execute unless data storage ml_aj:logic {data:{temp:{rig:{sitting:0b}}}} on owner if entity @s[tag=ml_aj.editor] if predicate ml_aj:player/item_edit anchored eyes positioned ^ ^ ^0.001 run function ml_aj:model/find/start
#Check if the player right-clicked with the path AI editor item
execute unless data storage ml_aj:logic {data:{temp:{rig:{sitting:0b}}}} on owner if entity @s[tag=ml_path.editor] if predicate ml_path:player/ai at @s run function ml_path:ai/target/add/start

execute if data entity @s {Sitting:1b} run tag @s add ml_aj.pet_sitting
execute if data entity @s {Sitting:0b} run tag @s remove ml_aj.pet_sitting

#Check if a player was made the owner
execute if data entity @s[tag=!ml_aj.has_owner] Owner run function ml_aj:model/vehicle/special/pet/new_owner

return 2
