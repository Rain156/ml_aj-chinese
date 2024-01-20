## function ml_ces:system/event/player/look_at/loop

#No need to check a non-existent target
$execute unless entity $(target) run return 0

tag @s add ml_ces.looking_at
$tag $(target) add ml_ces.looked_at
execute store success score @s ml_ces.temp if predicate ml_ces:player/looking_at
$tag $(target) remove ml_ces.looked_at

#If not correct entity, just return
execute if score @s ml_ces.temp matches 0 run return 0

tag @s remove ml_ces.look_at_reset
#Check if player is already looking at entity
$execute if data storage ml_ces:logic {data:{player:[{"id":"$(source)","look_at":"$(target)"}]}} run return 1

#Clear the previous target
function ml_ces:system/event/player/look_at/reset

#Set new target and run its command
$data modify storage ml_ces:logic data.player[{"id":"$(source)"}].look_at set value "$(target)"
$execute as $(target) at @s run $(command)

tag @s remove ml_ces.looking_at

return 1
