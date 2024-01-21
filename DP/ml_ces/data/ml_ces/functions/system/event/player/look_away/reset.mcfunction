## function ml_ces:system/event/player/look_away/look_away

$data modify storage ml_ces:logic data.event.player.look_away.temp.target set from storage ml_ces:logic data.player[{"id":"$(source)"}].look_at
$data modify storage ml_ces:logic data.player[{"id":"$(source)"}].look_at set value ""
