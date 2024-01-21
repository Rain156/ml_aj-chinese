## aj.rig_root entity context
## "selector": The target selector

scoreboard players set @s ml_aj.temp 0
data remove storage ml_aj:logic data.temp.attack
data remove storage ml_ces:logic data.uuid.output
$execute store result score @s ml_aj.temp as $(selector) run function ml_aj:ai/target/set

execute if score @s ml_aj.temp matches 1 store result score @s ml_aj.temp run function ml_aj:model/vehicle/special/guard/set with storage ml_aj:logic data.temp.attack
