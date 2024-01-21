## aj.rig_root entity context
## "name": The model name

tag @s add ml_aj.invalid
function ml_ces:event/tick/clear
function ml_aj:model/vehicle/execute {command:"function ml_aj:model/vehicle/delete"}

execute on vehicle if entity @s[tag=ml_aj.death_vehicle] run kill @s
$function animated_java:$(name)/zzzzzzzz/remove/as_root
