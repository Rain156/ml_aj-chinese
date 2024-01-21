## Ran by ml_ces generic interaction entity interact function
## interaction entity context

execute on vehicle if entity @s[tag=ml_aj.vehicle] run tag @s add ml_aj.target_temp
execute if entity @s[tag=ml_aj.vehicle_interact] on target if entity @s[tag=ml_aj.editor] if predicate ml_aj:player/item_edit at @s anchored eyes positioned ^ ^ ^0.001 facing entity @e[tag=ml_aj.target_temp] feet run function ml_aj:model/find/start
execute on vehicle if entity @s[tag=ml_aj.vehicle] run tag @s remove ml_aj.target_temp
