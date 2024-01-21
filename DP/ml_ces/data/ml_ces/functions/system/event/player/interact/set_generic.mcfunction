## Set a generic function call for when a player interacts with an interaction entity
## "command": The command to set for the generic interaction

$execute unless data storage ml_ces:logic data.event.player.interact.generic[{command:'$(command)'}] run data modify storage ml_ces:logic data.event.player.interact.generic append value {command:'$(command)',target:"@s"}
