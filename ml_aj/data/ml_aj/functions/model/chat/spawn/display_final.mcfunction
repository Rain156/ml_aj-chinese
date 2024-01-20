## function ml_aj:model/chat/display
## aj.rig_root entity context
## "save_name": The save name

data modify storage ml_aj:logic data.player.temp.name set from entity @s item.tag.data.save_name

#Check despawn
execute if data entity @s item.tag.data.ds_dist run function ml_aj:model/chat/spawn/display_despawn with entity @s item.tag.data

#Set build data for datapack command option
function ml_aj:model/chat/spawn/data_build

#Check if edits have been made
$execute unless data storage ml_aj:logic data.spawn.models[{name:"$(save_name)"}] run return 1

#Convert the current data
function ml_aj:model/chat/spawn/save_final {name:"ml_aj.__"}
data modify storage ml_aj:logic data.text.interpret.input set from storage ml_aj:logic data.spawn.models[{name:"ml_aj.__"}].data
function ml_aj:system/data/json/to_json
data modify storage ml_aj:logic data.spawn.save_check set from storage ml_aj:logic data.text.interpret.output

#Convert the existing data
$data modify storage ml_aj:logic data.text.interpret.input set from storage ml_aj:logic data.spawn.models[{name:"$(save_name)"}].data
function ml_aj:system/data/json/to_json

scoreboard players set @s ml_aj.temp 1
execute store success score @s ml_aj.temp run data modify storage ml_aj:logic data.spawn.save_check set from storage ml_aj:logic data.text.interpret.output
execute if score @s ml_aj.temp matches 1 run data modify storage ml_aj:logic data.player.temp.edited set value {"text":" - (Changes have been made)","color":"green"}

data remove storage ml_aj:logic data.spawn.save_check
