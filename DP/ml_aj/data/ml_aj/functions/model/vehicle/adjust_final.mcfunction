## ml_aj.vehicle entity context
## "type": The mob type

scoreboard players set #ml_temp ml_aj.check 1

#No Knockback
function ml_aj:model/vehicle/set_knockback with storage ml_aj:logic data.temp.vehicle

#Hostile
execute if data storage ml_aj:logic {data:{temp:{vehicle:{hostile:1}}}} on passengers if entity @s[tag=ml_aj.hostile_control] run scoreboard players set #ml_temp ml_aj.check 0
execute if data storage ml_aj:logic {data:{temp:{vehicle:{hostile:0}}}} run scoreboard players set #ml_temp ml_aj.check 0

#Mob Type
$execute unless entity @s[type=$(type)] run scoreboard players set #ml_temp ml_aj.check 1
