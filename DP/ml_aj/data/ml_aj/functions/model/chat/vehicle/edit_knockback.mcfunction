## player context
## "id": The model's UUID string
## "knockback": If the mob has no knockback

data modify storage ml_aj:logic data.player.temp.knockback set value "True"

scoreboard players set @s ml_aj.temp 0
$execute if data storage ml_aj:logic {data:{player:{temp:{knockback:"$(knockback)"}}}} store result score @s ml_aj.temp as $(id) run function ml_aj:model/chat/vehicle/edit_knockback_final {knockback:0}
$execute unless data storage ml_aj:logic {data:{player:{temp:{knockback:"$(knockback)"}}}} store result score @s ml_aj.temp as $(id) run function ml_aj:model/chat/vehicle/edit_knockback_final {knockback:1}

$function ml_aj:model/chat/vehicle/display {id:"$(id)"}
