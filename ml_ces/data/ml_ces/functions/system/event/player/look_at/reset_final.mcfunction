## function ml_ces:system/event/player/look_at/reset

$execute unless data storage ml_ces:logic data.player[{"id":"$(source)",look_at:""}] run function ml_ces:system/event/player/look_away/look_away
