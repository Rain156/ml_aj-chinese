## aj.rig_root entity context
## "name": The model's name
## "variant": The damage variant

scoreboard players set @s ml_aj.temp 1
$execute store success score @s ml_aj.temp on passengers run function animated_java:$(name)/zzzzzzzz/apply_variant/$(variant)/as_bone

return run scoreboard players get @s ml_aj.temp
