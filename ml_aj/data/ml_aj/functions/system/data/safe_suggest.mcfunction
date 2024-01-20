## Place text in ml_aj:logic data.player.temp.suggest
## Text is converted if needed and kept in ml_aj:logic data.player.temp.suggest

scoreboard players set @s ml_aj.temp 0
data modify storage ml_aj:logic data.text.check set from storage ml_aj:logic data.player.temp.suggest
execute store result score @s ml_aj.temp run function ml_aj:system/data/display_test with storage ml_aj:logic data.text

execute if score @s ml_aj.temp matches 0 run data modify storage ml_aj:logic data.text.interpret.input set from storage ml_aj:logic data.player.temp.suggest
execute if score @s ml_aj.temp matches 0 run function ml_aj:system/data/json/to_json
execute if score @s ml_aj.temp matches 0 run data modify storage ml_aj:logic data.player.temp.suggest set string storage ml_aj:logic data.text.interpret.output 1 -1
