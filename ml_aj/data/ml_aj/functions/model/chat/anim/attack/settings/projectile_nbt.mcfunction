## player context
## "id": The model's UUID string
## "index": The animation index
## "nbt": The projectile nbt

data modify storage ml_aj:logic data.temp.anim set value {none:{}}
$execute if data storage ml_aj:logic {data:{temp:{anim:{none:$(nbt)}}}} as $(id) run data remove entity @s item.tag.data.anims.attack[$(index)].proj_nbt
$execute unless data storage ml_aj:logic {data:{temp:{anim:{none:$(nbt)}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].proj_nbt set value $(nbt)

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}
