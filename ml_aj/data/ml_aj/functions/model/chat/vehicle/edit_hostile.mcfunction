## player context
## "id": The model's UUID string
## "hostile": If the mob is hostile

data modify storage ml_aj:logic data.player.temp.hostile set value "True"

scoreboard players set @s ml_aj.temp 0
$execute if data storage ml_aj:logic {data:{player:{temp:{hostile:"$(hostile)"}}}} store result score @s ml_aj.temp as $(id) run function ml_aj:model/chat/vehicle/edit_hostile_final {hostile:0}
$execute unless data storage ml_aj:logic {data:{player:{temp:{hostile:"$(hostile)"}}}} store result score @s ml_aj.temp as $(id) run function ml_aj:model/chat/vehicle/edit_hostile_final {hostile:1}

execute if score @s ml_aj.temp matches 0 run function ml_ces:event/schedule/set {time:1,measure:"t",command:'function ml_aj:system/player/notice/display {text:"The mob type you selected requires this mob to be hostile.",color:"red",bold:false}'}

$function ml_aj:model/chat/vehicle/display {id:"$(id)"}
