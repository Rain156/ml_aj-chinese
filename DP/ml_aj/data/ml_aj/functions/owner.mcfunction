## Set the owner for a pet model
## player context
## "id": The model id

tag @s add ml_aj.owner_target
scoreboard players set @s ml_aj.temp 0
$execute store result score @s ml_aj.temp as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run function ml_aj:model/setup/owner
tag @s remove ml_aj.owner_target

$execute if score @s ml_aj.temp matches 0 run tellraw @a[tag=debug] [{"text":"\n","color":"red"},{"text":"Failed to set player "},{"selector":"@s","color":"gold"},{"text":" as the owner for the model with id "},{"text":"$(id)","color":"gold"},{"text":". Either that player could not be found, or the target model is not set as a Pet type mob.\n"}]

$execute as @e[tag=aj.rig_root] if data entity @s {item:{tag:{data:{badge:$(id)}}}} run data modify storage ml_aj:logic data.player.temp.id set from entity @s item.tag.data.id
execute unless score @s ml_aj.temp matches 0 as @p[tag=ml_aj.editor,distance=..1] run function ml_aj:model/chat/display with storage ml_aj:logic data.player.temp
