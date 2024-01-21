## player context
## "id": The model's UUID string
## "index": The animation index
## "time": The command timing

data modify storage ml_aj:logic data.player.temp.time set value "First Frame"
$execute if data storage ml_aj:logic {data:{player:{temp:{time:"$(time)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].cmd_time set value 1

data modify storage ml_aj:logic data.player.temp.time set value "Hit Time"
$execute if data storage ml_aj:logic {data:{player:{temp:{time:"$(time)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].cmd_time set value 2

data modify storage ml_aj:logic data.player.temp.time set value "Last Frame"
$execute if data storage ml_aj:logic {data:{player:{temp:{time:"$(time)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].cmd_time set value 0

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}
