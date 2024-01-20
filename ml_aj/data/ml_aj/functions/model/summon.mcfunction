## Summon an Animated Java model
## "name": The model name

$data modify storage ml_aj:logic data.player.temp set value {id:"",name:"$(name)"}
$execute rotated ~ 0 run function animated_java:$(name)/summon

$execute unless entity @e[tag=aj.$(name).root,distance=..1] run return run function ml_aj:model/invalid

$execute as @e[tag=aj.$(name).root,limit=1,sort=nearest] at @s run function ml_aj:model/summon_final

function ml_aj:model/chat/display with storage ml_aj:logic data.player.temp
