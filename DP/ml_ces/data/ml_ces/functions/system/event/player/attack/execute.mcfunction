## function ml_ces:system/event/player/attack/check

data modify storage ml_ces:logic data.event.player.attack.execute.target set value "@s"

#Run generic command if needed
execute if data storage ml_ces:logic data.event.player.attack.generic[0] run function ml_ces:system/event/player/attack/run_generic

$execute unless data storage ml_ces:logic data.event.player.attack.current[{"id":$(target)}] run return 0

$data modify storage ml_ces:logic data.event.player.attack.execute.command set from storage ml_ces:logic data.event.player.attack.current[{"id":$(target)}].command
function ml_ces:system/run_command with storage ml_ces:logic data.event.player.attack.execute
