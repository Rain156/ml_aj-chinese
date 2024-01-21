
# Summary:

- The Command Event System datapack makes it easy to schedule commands for entities after a timed delay, run commands for entities on every game tick, set commands on interaction entities that run when players attack or interact with them, set commands on entities that trigger when players look at or away from them, and call custom named events that run commands from registered entities.

# IMPORTANT: When setting command strings in function calls, don't use the / character at the start of the command. See below examples for more details.

***

# Scheduled Events: An event that can be scheduled to run a command by an entity after a timed delay

> ml_ces:event/schedule/set
-   Sets a scheduled event for the entity that runs the function
    /execute as @p run function ml_ces:event/schedule/set {"time":10,"measure":"t","command":"say 10 tick delay"}
> ml_ces:event/schedule/set_named
-   Sets a scheduled event for the entity that runs the function, but uses an event name that can be referenced in the clear function
    /execute as @p run function ml_ces:event/schedule/set_named {"time":10,"measure":"s","command":"say 10 second delay","event":"cmd1"}

> ml_ces:event/schedule/set_random
-   Sets a scheduled event for the entity that runs the function, but uses a min and max value to randomize the delay time
    /execute as @p run function ml_ces:event/schedule/set_random {"min":1,"max":5,"measure":"s","command":"say scheduled between 1 and 5 seconds"}
> ml_ces:event/schedule/set_random_named
-   Sets a scheduled event for the entity that runs the function, but uses a min and max value to randomize the delay time, and uses an event name that can be referenced in the clear function
    /execute as @p run function ml_ces:event/schedule/set_random_named {"min":1,"max":5,"measure":"s","command":"say scheduled between 1 and 5 seconds","event":"cmd1"}

> ml_ces:event/schedule/clear
-   Clears a scheduled event with the name that was used with the set_named or set_random_named functions
    /function ml_ces:event/schedule/clear {"event":"cmd1"}
> ml_ces:event/schedule/clear_all
-   Clears all scheduled events that were set with one of the ml_ces:event/schedule/set functions
    /function ml_ces:event/schedule/clear_all

> ml_ces:event/schedule/list_named
-   List all the current named scheduled events that are set
    /function ml_ces:event/schedule/list_named

***

# Tick Event: An event that will run a command by an entity on every game tick

> ml_ces:event/tick/set
-   Sets a tick event for the entity that runs the function
    /execute as @p run function ml_ces:event/tick/set {"command":"say this runs every game tick"}
> ml_ces:event/tick/clear
-   Clears the tick event for the entity that runs the function
    /execute as @p run function ml_ces:event/tick/clear
> ml_ces:event/tick/clear_all
-   Clears all tick events that exist in the MLCES datapack
    /function ml_ces:event/tick/clear_all

***

# Player Events: An event that will be called when the player attacks (left-click) or interacts (right-click) an interaction entity

- Note: Within the attack and interact commands or function that you set, you can access the player that attacked/interacted with the interaction entity like this:
    /execute on attacker run say this is the player attacking
    /execute on target run say this is the player interacting

> ml_ces:event/player/attack/set
-   Sets a player attack event for the interaction entity that runs the function
    /execute as @e[type=minecraft:interaction] run function ml_ces:event/player/attack/set {"command":"execute on attacker run effect give @s minecraft:instant_health 1 1 true"}
> ml_ces:event/player/attack/clear
-   Clears a player attack event for the interaction entity that runs the function
    /execute as @e[type=minecraft:interaction] run function ml_ces:event/player/attack/clear
> ml_ces:event/player/attack/clear_all
-   Clears all player attack events for any interaction entity that was set
    /function ml_ces:event/player/attack/clear_all

> ml_ces:event/player/interact/set
-   Sets a player interaction event for the interaction entity that runs the function
    /execute as @e[type=minecraft:interaction] run function ml_ces:event/player/interact/set {"command":"execute on target run give @s minecraft:diamond 1"}
> ml_ces:event/player/interact/clear
-   Clears a player interaction event for the interaction entity that runs the function
    /execute as @e[type=minecraft:interaction] run function ml_ces:event/player/interact/clear
> ml_ces:event/player/interact/clear_all
-   Clears all player interaction events for any interaction entity that was set
    /function ml_ces:event/player/interact/clear_all

> ml_ces:event/player/look_at/set
-   Sets a player look-at event for the entity that runs the function
-   Note: The player that's looking at the entity can be targeted with @p[tag=ml_ces.looking_at], but be aware that the player's tag is quickly removed after the function call.
    /execute as @e[type=minecraft:pig,limit=1,sort=nearest] run function ml_ces:event/player/look_at/set {"command":"execute facing entity @p[tag=ml_ces.looking_at] feet run tp @s ~ ~ ~ ~ ~"}
> ml_ces:event/player/look_at/clear
-   Clears a player look-at event for the entity that runs the function
    /execute as @e[type=minecraft:pig,limit=1,sort=nearest] run function ml_ces:event/player/look_at/clear
> ml_ces:event/player/look_at/clear_all
-   Clears all player look-at events for any entities that were set
    /function ml_ces:event/player/look_at/clear_all

> ml_ces:event/player/look_away/set
-   Sets a player look-away event for the entity that runs the function
-   Note: The player that looked away from the entity can be targeted with @p[tag=ml_ces.looking_away], but be aware that the player's tag is quickly removed after the function call.
    /execute as @e[type=minecraft:pig,limit=1,sort=nearest] run function ml_ces:event/player/look_away/set {"command":"say player looked away"}
> ml_ces:event/player/look_away/clear
-   Clears a player look-away event for the entity that runs the function
    /execute as @e[type=minecraft:pig,limit=1,sort=nearest] run function ml_ces:event/player/look_away/clear
> ml_ces:event/player/look_away/clear_all
-   Clears all player look-away events for any entities that were set
    /function ml_ces:event/player/look_away/clear_all

***

# Custom Events: An event that can be called to run commands by entities that are registered to the event

> ml_ces:event/custom/register
-   Registers a custom event for the entity that runs the function
    /execute as @p run function ml_ces:event/custom/register {"event":"event1","command":"say this will run when event1 is called"}
> ml_ces:event/custom/unregister
-   Un-registers a custom event for the entity that runs the function
-   Note: This will only remove the registered command for the specific entity, not the whole event itself.
    /execute as @p run function ml_ces:event/custom/unregister {"event":"event1"}

> ml_ces:event/custom/call
-   Calls the custom event which targets all registered entities and runs their commands
    /function ml_ces:event/custom/call {"event":"event1"}
> ml_ces:event/custom/remove
-   Removes an event that was registered, effectively removing all of its entities/commands so that it can no longer be called
    /function ml_ces:event/custom/remove {"event":"event1"}

> ml_ces:event/custom/list_named
-   List all the current named custom events that are set
    /function ml_ces:event/custom/list_named

***

# Important Notes:

- If you're going to kill an entity or remove it from loaded chunks and it has events set for it, be sure to first clear all events on that entity:
    /execute as @e[tag=delete] run function ml_ces:event/entity_clear
- If double quotes are needed in a command string, surround them in single quotes. Ex: {command:'tellraw @a {"text":"Test"}'}
- Tag yourself with debug if you want to receive any error messages that generate from the datapack, and/or debug.warning if you want to receive any warning messages that generate from the datapack.
- Run this function to unload the datapack, but be warned that it will remove all events that were set in the datapack:
    /function ml_ces:system/unload

***

# Performance Tips:

- If you find this datapack adding lag to your game, try disabling the player look events. Disabling won't remove the existing events that are set. You can also enable them again at any time.
    /function ml_ces:event/disable_look_events
- For best performance, avoid setting scheduled events for every tick. Use the tick event instead. It's also best not to target a large amount of entities at the same time when setting/registering events on them.
