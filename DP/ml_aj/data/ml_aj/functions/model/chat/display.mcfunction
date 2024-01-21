## player context
## "id": The model's UUID string

tag @s remove ml_aj.menu_vehicle

$data modify storage ml_aj:logic data.player.temp set value {id:"$(id)",badge:0,name:"AJ Model",owner:"None",mob_name:'{"text":"None Set"}',variant:"default",suggest:"Set Name Here",auto:"True",outdated:{"text":""},repo:"Start",pet_remove:{"text":""}}

execute if entity @s[tag=ml_aj.model_move] run data modify storage ml_aj:logic data.player.temp.repo set value "Stop"

#Create a temporary lookup for this entity's UUID for simplified edit commands
$data modify storage ml_aj:logic data.player.temp.item_data set value "$(id)"
function ml_aj:player/item_data {item:"ml_aj.edit",mod:"ml_aj:item_data"}

$execute as $(id) run function ml_aj:model/chat/display_final with entity @s item.tag.data

#Convert suggestion if error from string set
function ml_aj:system/data/safe_suggest

function ml_aj:model/chat/display_extra with storage ml_aj:logic data.player.temp
