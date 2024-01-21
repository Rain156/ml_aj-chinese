## function ml_aj:model/vehicle/tick/first
## aj.rig_root entity context

scoreboard players set @s ml_aj.temp 0
execute unless predicate ml_aj:entity/model_idle run scoreboard players set @s ml_aj.temp 1

#Prevent move check if running a higher priority animation
execute unless entity @s[tag=ml_aj.anim_busy] if score @s ml_aj.temp matches 1 run function ml_aj:model/has_moved
execute unless entity @s[tag=ml_aj.anim_busy] if score @s ml_aj.temp matches 0 run function ml_aj:model/has_not_moved

execute unless entity @s[tag=ml_aj.rotate_fixed] run tp @s ~ ~0.01 ~ ~ 0
execute if entity @s[tag=ml_aj.rotate_fixed] run tp @s ~ ~0.01 ~
execute if entity @s[tag=ml_aj.rotate_target] facing entity @p[distance=..25] eyes run tp @s ~ ~ ~ ~ 0
