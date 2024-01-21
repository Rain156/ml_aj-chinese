## player context

execute if score @s ml_aj.delay matches 1.. run scoreboard players remove @s ml_aj.delay 1

execute if score @s ml_aj.item matches 1.. run function ml_aj:player/interact/item_check
execute if score @s ml_aj.spawn matches 1.. run function ml_aj:model/spawn/egg
