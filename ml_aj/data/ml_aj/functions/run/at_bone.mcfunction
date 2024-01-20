## Run a command at a bone position
## aj.rig_root entity context
## "name": The name of the bone
## "cmd": The command to run

$data modify storage ml_aj:logic data.temp.locate set value {model:"",bone:"$(name)",command:'$(cmd)'}
data modify storage ml_aj:logic data.temp.locate.model set from entity @s item.tag.data.name

scoreboard players set @s ml_aj.temp 0
execute store result score @s ml_aj.temp at @s run function ml_aj:model/location/bone/execute with storage ml_aj:logic data.temp.locate

$execute if score @s ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"Failed to execute a command at the bone named '"},{"text":"$(name)","color":"gold"},{"text":"' for the target model "},{"selector":"@s","color":"gold"},{"text":".\n"}]
