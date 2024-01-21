## player context
## "id": The UUID of the target model entity

$execute as @e[tag=aj.rig_root,distance=..10] if data entity @s {UUID:$(id)} at @s run function ml_aj:model/find/complete

function ml_aj:model/chat/display with storage ml_aj:logic data.model.found
