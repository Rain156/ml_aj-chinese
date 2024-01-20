## function ml_aj:variant
## aj.rig_root entity context
## "name": The model name
## "variant": The variant name

scoreboard players set @s ml_aj.check 1
$execute store success score @s ml_aj.check on passengers run function animated_java:$(name)/zzzzzzzz/apply_variant/$(variant)/as_bone

$execute if score @s ml_aj.check matches 1 run data modify entity @s item.tag.data.variant set value "$(variant)"

return run scoreboard players get @s ml_aj.check
