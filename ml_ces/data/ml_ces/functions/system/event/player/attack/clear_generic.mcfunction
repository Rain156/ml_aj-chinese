## Clear a generic function call for when a player attacks an interaction entity
## "command": The command to clear

$data remove storage ml_ces:logic data.event.player.attack.generic[{command:'$(command)'}]
