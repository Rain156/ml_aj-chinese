## player context
## "id": The model's UUID string
## "index": The animation index
## "entity": The command entity

data modify storage ml_aj:logic data.player.temp.entity set value "AJ Model"
$execute if data storage ml_aj:logic {data:{player:{temp:{entity:"$(entity)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].cmd_entity set value 1
$execute unless data storage ml_aj:logic {data:{player:{temp:{entity:"$(entity)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].cmd_entity set value 0

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}
