## function ml_ces:system/event/player/interact/check

data modify storage ml_ces:logic data.event.player.interact.execute.target set value "@s"

#Run generic command if needed
execute if data storage ml_ces:logic data.event.player.interact.generic[0] run function ml_ces:system/event/player/interact/run_generic

$execute unless data storage ml_ces:logic data.event.player.interact.current[{"id":$(target)}] run return 0

$data modify storage ml_ces:logic data.event.player.interact.execute.command set from storage ml_ces:logic data.event.player.interact.current[{"id":$(target)}].command
function ml_ces:system/run_command with storage ml_ces:logic data.event.player.interact.execute
