## player context
## "id": The model's UUID string
## "index": The attack animation index
## "cmd": The command to set

$data modify storage ml_aj:logic data.player.temp.cmd set value '$(cmd)'

$execute unless data storage ml_aj:logic {data:{player:{temp:{cmd:''}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].command set from storage ml_aj:logic data.player.temp.cmd
$execute if data storage ml_aj:logic {data:{player:{temp:{cmd:''}}}} as $(id) run data remove entity @s item.tag.data.anims.attack[$(index)].command

$execute as $(id) run function ml_aj:model/chat/anim/attack/settings/set_callback_final {index:$(index)}

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}
