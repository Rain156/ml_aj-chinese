## Clear all events that are set for this entity

scoreboard players set #ml_temp ml_ces.temp 0
execute unless entity @s store result score #ml_temp ml_ces.temp run function ml_ces:system/error/context {"fn":"ml_ces:event/entity_clear"}
execute if score #ml_temp ml_ces.temp matches 1 run return 0

data modify storage ml_ces:logic data.event.temp set value {"id":"","uuid":[I;0,0,0,0]}
data modify storage ml_ces:logic data.event.temp.uuid set from entity @s UUID

#Custom Events
function ml_ces:system/event/custom/clear_entity

#Player Events
execute if entity @s[type=minecraft:interaction] run function ml_ces:event/player/attack/clear
execute if entity @s[type=minecraft:interaction] run function ml_ces:event/player/interact/clear
function ml_ces:event/player/look_at/clear
function ml_ces:event/player/look_away/clear

#Scheduled events can only be removed if named, so no need to remove any for this entity because they will just fail when ran

#Other Events
function ml_ces:event/tick/clear
