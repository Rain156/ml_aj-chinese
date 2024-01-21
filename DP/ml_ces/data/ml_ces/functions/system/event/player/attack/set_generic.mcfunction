## Set a generic function call for when a player attacks an interaction entity
## "command": The command to set for the generic attack

$execute unless data storage ml_ces:logic data.event.player.attack.generic[{command:'$(command)'}] run data modify storage ml_ces:logic data.event.player.attack.generic append value {command:'$(command)',target:"@s"}
