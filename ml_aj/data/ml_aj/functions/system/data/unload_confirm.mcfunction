## function ml_aj:system/unload

function ml_aj:system/player/chat_clear

#Entities
execute as @e[tag=ml_aj.initialized] run function ml_aj:model/delete with entity @s item.tag.data
execute as @e[tag=ml_aj.entity] at @s run function ml_aj:system/entity/delete

tag @a remove ml_aj.editor
clear @a minecraft:warped_fungus_on_a_stick{data:{ml_aj:1b}}
clear @a minecraft:ghast_spawn_egg{data:{ml_aj:1b}}

#Scoreboard
scoreboard objectives remove ml_aj.anim
scoreboard objectives remove ml_aj.check
scoreboard objectives remove ml_aj.cooldown
scoreboard objectives remove ml_aj.count
scoreboard objectives remove ml_aj.delay
scoreboard objectives remove ml_aj.global
scoreboard objectives remove ml_aj.id
scoreboard objectives remove ml_aj.number
scoreboard objectives remove ml_aj.raycast
scoreboard objectives remove ml_aj.raycast_max
scoreboard objectives remove ml_aj.temp

scoreboard objectives remove ml_aj.item
scoreboard objectives remove ml_aj.spawn

scoreboard objectives remove ml_aj.calc.x1
scoreboard objectives remove ml_aj.calc.y1
scoreboard objectives remove ml_aj.calc.z1
scoreboard objectives remove ml_aj.calc.x2
scoreboard objectives remove ml_aj.calc.y2
scoreboard objectives remove ml_aj.calc.z2

#Storage
data remove storage ml_aj:logic data

function ml_ces:system/event/player/interact/remove_generic {command:"function ml_aj:player/interact/check"}
function ml_ces:system/event/player/attack/remove_generic {command:"function ml_aj:player/attack/check"}

#Disable
datapack disable "file/ml_aj"
datapack disable "file/ml_aj.zip"

tellraw @s {"text":"\n[MLAJ] 数据包已卸载.\n","color":"green"}
