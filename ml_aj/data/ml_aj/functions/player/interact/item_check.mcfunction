## function ml_aj:system/player/tick
## player context

scoreboard players set @s ml_aj.item 0
execute unless score @s ml_aj.delay = @s ml_aj.delay run scoreboard players set @s ml_aj.delay 0
execute if score @s ml_aj.delay matches 1.. run return 0

execute unless entity @s[tag=ml_aj.editor] run return 0

execute if predicate ml_aj:player/item_edit anchored eyes positioned ^ ^ ^0.001 run function ml_aj:model/find/start
