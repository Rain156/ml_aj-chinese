## player context
## "id": The unique id to link the model
## "distance": The distance from the player

$data modify storage ml_aj:logic data.player.temp.item_data set value {id:"$(id)",distance:$(distance)}
function ml_aj:player/item_data {item:"ml_aj.edit",mod:"ml_aj:model_move"}

tag @s add ml_aj.model_move
