## function ml_aj:model/chat/vehicle/display
## aj.rig_root entity context
## "id": The model's UUID string
## "damage": The attack damage amount

execute if data entity @s item.tag.data.vehicle unless data entity @s item.tag.data.vehicle_set run data modify entity @s item.tag.data.vehicle_temp set from entity @s item.tag.data.vehicle
execute unless data entity @s item.tag.data.vehicle unless data entity @s item.tag.data.vehicle_set run data modify entity @s item.tag.data.vehicle_temp set value {type:"minecraft:cat",hostile:0,scale:10,no_knockback:0}

execute if data entity @s item.tag.data.vehicle_temp.force_hostile run data modify entity @s item.tag.data.vehicle_temp.hostile set value 1

execute if data entity @s item.tag.data.vehicle_temp.prop run function ml_aj:model/chat/vehicle/display_prop with entity @s item.tag.data.vehicle_temp
data modify storage ml_aj:logic data.player.temp.speed set from entity @s item.tag.data.speed
execute store result storage ml_aj:logic data.player.temp.health int 1 run data get entity @s item.tag.data.health_max
execute unless data entity @s {item:{tag:{data:{health_max:0f}}}} run data modify storage ml_aj:logic data.player.temp.health_text set string storage ml_aj:logic data.player.temp.health
execute if data entity @s item.tag.data.d_variant run data modify storage ml_aj:logic data.player.temp.d_variant set from entity @s item.tag.data.d_variant

#Scale
execute store result score @s ml_aj.temp run data get entity @s item.tag.data.vehicle_temp.scale
execute store result storage ml_aj:logic data.player.temp.scale float 0.1 run scoreboard players get @s ml_aj.temp
data modify storage ml_aj:logic data.player.temp.scale set string storage ml_aj:logic data.player.temp.scale 0 -1

#Health Bar
execute if data entity @s {item:{tag:{data:{bar:1}}}} run data modify storage ml_aj:logic data.player.temp.bar set value "True"
execute store result score @s ml_aj.temp run data get entity @s item.tag.data.bar_offset
execute store result storage ml_aj:logic data.player.temp.offset float 0.1 run scoreboard players get @s ml_aj.temp
data modify storage ml_aj:logic data.player.temp.offset set string storage ml_aj:logic data.player.temp.offset 0 -1
data modify storage ml_aj:logic data.player.temp.color set from entity @s item.tag.data.bar_color
function ml_aj:model/chat/color/display_int_color with storage ml_aj:logic data.player.temp
$execute if data entity @s {item:{tag:{data:{bar:1}}}} run data modify storage ml_aj:logic data.player.temp.offset_text set value [{"text":" | "},{"text":" Y 轴偏移: ","hoverEvent":{"action":"show_text","contents":"Y轴偏移量,用于提高或降低生命值条在模型上方的位置"}},{"text":" ▼ ","color":"green","hoverEvent":{"action":"show_text","contents":"降低Y轴偏移值"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/vehicle/edit_offset {id:\"$(id)\",action:0}"}},{"storage":"ml_aj:logic","nbt":"data.player.temp.offset","color":"yellow"},{"text":" ▲ ","color":"green","hoverEvent":{"action":"show_text","contents":"增加Y轴偏移值"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/vehicle/edit_offset {id:\"$(id)\",action:1}"}}]

#No Knockback
execute if data entity @s {item:{tag:{data:{vehicle_temp:{no_knockback:1}}}}} run data modify storage ml_aj:logic data.player.temp.knockback set value "True"

#Hostile
execute if data entity @s {item:{tag:{data:{vehicle_temp:{hostile:1}}}}} run data modify storage ml_aj:logic data.player.temp.hostile set value "True"
data modify storage ml_aj:logic data.player.temp.damage set from entity @s item.tag.data.damage

#Land
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:armor_stand"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "盔甲架"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:rabbit"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "兔子"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:cat"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "猫"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:wolf"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "狼"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:fox"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "狐狸"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:cow"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "牛"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:panda"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "熊猫"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:goat"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "山羊"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:iron_golem"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "铁傀儡"

#Water
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:tropical_fish"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "鱼"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:salmon"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "鲑鱼"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:squid"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "鱿鱼"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:dolphin"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "海豚"

#Hybrid
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:frog"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "青蛙"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:axolotl"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "美西螈"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:turtle"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "海龟"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:polar_bear"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "北极熊"

#Flying
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:bat"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "蝙蝠"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:bee"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "蜜蜂"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:allay"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "悦灵"

#Hostile
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:vex"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "恼鬼"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:slime"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "史莱姆"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:magma_cube"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "岩浆怪"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:zoglin"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "僵尸疣猪兽"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:blaze"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "烈焰人"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:witch"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "女巫"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:zombie"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "僵尸"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:piglin"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "猪灵"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:drowned"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "溺尸"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:guardian"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "守卫者"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:ravager"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "劫掠兽"
execute if data entity @s {item:{tag:{data:{vehicle_temp:{type:"minecraft:silverfish"}}}}} run data modify storage ml_aj:logic data.player.temp.type set value "蠹虫"
