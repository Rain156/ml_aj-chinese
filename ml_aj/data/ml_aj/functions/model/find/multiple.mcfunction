## function ml_aj:model/find/start
## player context

function ml_aj:system/player/chat_clear

tellraw @s [{"text":"\n","color":"#C29C54"},{"text":"Multiple AJ model entities were found. Select which entity you would like to edit:\n"}]

#Loop through the model entities that were found
tag @s add ml_aj.searching
function ml_aj:model/find/multiple_loop with storage ml_aj:logic data.model.search[0]
tag @s remove ml_aj.searching

tellraw @s {"text":"\n"}
