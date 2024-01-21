## ml_aj.vehicle entity context

execute if entity @s[tag=ml_aj.dying] run return 0

#Find the amount that was lost
scoreboard players set @s ml_aj.number 10000
execute store result score @s ml_aj.temp run data get entity @s Health 10
data modify storage ml_aj:logic data.temp.damage set value {amount:0f}
execute store result storage ml_aj:logic data.temp.damage.amount float 0.1 run scoreboard players operation @s ml_aj.number -= @s ml_aj.temp

function ml_aj:model/execute {command:"function ml_aj:ai/damage/apply_update"}

return 1
