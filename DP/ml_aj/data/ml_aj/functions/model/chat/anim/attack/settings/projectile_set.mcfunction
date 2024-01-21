## player context
## "id": The model's UUID string
## "index": The animation index
## "type": The projectile type

data modify storage ml_aj:logic data.temp.anim set value {none:""}
$execute if data storage ml_aj:logic {data:{temp:{anim:{none:"$(type)"}}}} as $(id) run data remove entity @s item.tag.data.anims.attack[$(index)].proj
$execute if data storage ml_aj:logic {data:{temp:{anim:{none:"$(type)"}}}} as $(id) run data remove entity @s item.tag.data.anims.attack[$(index)].proj_nbt
$execute unless data storage ml_aj:logic {data:{temp:{anim:{none:"$(type)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].proj set value "$(type)"

#Set the damage value to 0 if using projectile
$execute if data storage ml_aj:logic {data:{temp:{anim:{none:"$(type)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].damage set value -1
$execute unless data storage ml_aj:logic {data:{temp:{anim:{none:"$(type)"}}}} as $(id) run data modify entity @s item.tag.data.anims.attack[$(index)].damage set value 0

#Make sure there's a speed value if using projectile
$execute if data storage ml_aj:logic {data:{temp:{anim:{none:"$(type)"}}}} as $(id) run data remove entity @s item.tag.data.anims.attack[$(index)].proj_speed
$execute unless data storage ml_aj:logic {data:{temp:{anim:{none:"$(type)"}}}} as $(id) unless data entity @s item.tag.data.anims.attack[$(index)].proj_speed run data modify entity @s item.tag.data.anims.attack[$(index)].proj_speed set value 3

$function ml_aj:model/chat/anim/attack/settings/display {id:"$(id)",index:$(index)}
