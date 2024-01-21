## Display an error message
## "error": The error message to display

scoreboard players set #ml_aj_error ml_aj.global 1
$tellraw @a[tag=debug] ["\n[MLAJ] ",{"text":"$(error)\n","color":"red"}]
