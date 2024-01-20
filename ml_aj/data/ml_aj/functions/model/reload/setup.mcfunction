## old aj.rig_root entity context
## "name": The model name

#Make sure this model is not confused with the new one
$tag @s remove aj.$(name).root

$function animated_java:$(name)/summon
$execute as @e[tag=aj.$(name).root,limit=1,sort=nearest] at @s run function ml_aj:model/setup/init

#Copy the existing data
data modify storage ml_aj:logic data.temp.reload.mob_name set from entity @s CustomName
data modify storage ml_aj:logic data.temp.reload.tags set from entity @s Tags
data modify storage ml_aj:logic data.temp.reload.data set from entity @s item.tag.data

#Setup the new model
$execute as @e[tag=aj.$(name).root,limit=1,sort=nearest] at @s run function ml_aj:model/reload/setup_final

#Delete outdated model
data remove entity @s item.tag.data
$function ml_aj:model/delete {name:"$(name)"}
