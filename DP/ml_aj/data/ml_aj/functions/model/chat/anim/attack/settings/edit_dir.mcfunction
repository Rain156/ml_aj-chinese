## player context
## "id": The model's UUID string
## "index": The animation index
## "dir": The directional setting

data modify storage ml_aj:logic data.player.temp.dir set value "True"
$execute if data storage ml_aj:logic {data:{player:{temp:{dir:"$(dir)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].dir set value 0
$execute unless data storage ml_aj:logic {data:{player:{temp:{dir:"$(dir)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].dir set value 1

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}
