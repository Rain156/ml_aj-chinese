## function ml_aj:model/vehicle/tick/10
## ml_aj.vehicle entity context

#Keep hitboxes at full health
execute on passengers if entity @s[tag=ml_aj.hitbox] run data modify entity @s Health set value 1000f

#Special AI actions
function ml_aj:model/vehicle/special/default
execute if entity @s[type=minecraft:bee] run function ml_aj:model/vehicle/special/bee
execute if entity @s[type=minecraft:fox] run function ml_aj:model/vehicle/special/fox

#Guard check
scoreboard players set #ml_temp ml_aj.check 0
execute if entity @s[type=#ml_aj:guard] run function ml_aj:model/vehicle/tick/10_guard

#Pet
execute if entity @s[type=#ml_aj:pet] run return run function ml_aj:model/vehicle/tick/10_pet

return 1
