## function ml_aj:model/vehicle/special/pet/sit
## ml_aj.vehicle entity context

#Stop the vehicle
data modify entity @s Motion set value [0d,0d,0d]
execute if entity @s[tag=ml_path.ai_vehicle] run function ml_path:mob/pause
