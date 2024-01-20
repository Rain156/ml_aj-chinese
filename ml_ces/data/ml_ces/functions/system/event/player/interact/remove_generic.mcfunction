## Remove a generic function call for when a player interacts with an interaction entity
## "command": The command to set for the generic interaction

$data remove storage ml_ces:logic data.event.player.interact.generic[{command:'$(command)'}]
