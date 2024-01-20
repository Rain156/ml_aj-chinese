## function ml_ces:event/player/look_away/clear

$data remove storage ml_ces:logic data.event.player.look_away.current[{"id":$(id)}]
$data remove storage ml_ces:logic data.event.player.look_at.current[{"id":$(id),"command":"execute if entity @s[tag=ml_ces.dummy_command]"}]
