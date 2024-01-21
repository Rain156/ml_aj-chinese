## function ml_aj:model/vehicle/tick/first
## ml_aj.vehicle entity context

#Check if using the ML path system
execute if entity @s[tag=ml_path.ai_vehicle] on passengers if entity @s[tag=ml_path.ai,tag=ml_path.ticking] at @s run function ml_path:ai/target/tick

execute if score #ml_temp ml_aj.count matches 5 run function ml_aj:model/vehicle/tick/5
