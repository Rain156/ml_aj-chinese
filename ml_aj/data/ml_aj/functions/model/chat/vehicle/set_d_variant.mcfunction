## player context
## "id": The model's UUID string
## "name": The model's name
## "variant": The damage variant

$execute if data storage ml_aj:logic {data:{player:{temp:{variant:{variant:""}}}}} run data remove entity $(id) item.tag.data.d_variant

scoreboard players set @s ml_aj.temp 1
$data modify storage ml_aj:logic data.player.temp.variant.name set from entity $(id) item.tag.data.name
$execute unless data storage ml_aj:logic {data:{player:{temp:{variant:{variant:""}}}}} store result score @s ml_aj.temp as $(id) run function ml_aj:model/chat/vehicle/set_d_variant_final with storage ml_aj:logic data.player.temp.variant

#Set the variant back to the original
$execute as $(id) run function ml_aj:model/reset_variant

execute if score @s ml_aj.temp matches 0 run function ml_aj:system/player/chat_clear
$execute if score @s ml_aj.temp matches 0 run tellraw @s [{"text":"\n","color":"red"},{"text":"Failed to find the "},{"text":"$(variant)","color":"gold"},{"text":" damage variant for this model. Either the variant does not exist, or you need to check the Include Apply Variant Functions option in your Animated Java Project Settings when exporting the model."},{"text":" [Return] ","color":"gold","hoverEvent":{"action":"show_text","contents":"Click to return to the AI Settings menu"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/vehicle/display {id:\"$(id)\"}"}},{"text":"\n"}]

$execute unless data storage ml_aj:logic {data:{player:{temp:{variant:{variant:""}}}}} if score @s ml_aj.temp matches 1 run data modify entity $(id) item.tag.data.d_variant set value "$(variant)"
$execute if data storage ml_aj:logic {data:{player:{temp:{variant:{variant:""}}}}} run data remove entity $(id) item.tag.data.d_variant
$execute if score @s ml_aj.temp matches 1 run function ml_aj:model/chat/vehicle/display {id:"$(id)"}
