## function ml_aj:model/chat/anim/attack/settings/display_final
## player context
## "id": The model's UUID string
## "index": The index number
## "name": The animation name
## "distance": The distance float amount
## "dist_int": The distance integer amount
## "dir": If directional
## "full": The full animation time
## "impact": The impact amount
## "impact_text": The impact text
## "suggest": The callback suggest
## "cmd_time": The command timing
## "cmd_entity": The command entity
## "projectile": The projectile type
## "proj_suggest": The suggest for projectile nbt
## "damage": The damage amount
## "damage": The damage text to display

function ml_aj:system/player/chat_clear

$tellraw @s [{"text":"","color":"#C29C54"},{"text":"---------- Attack Animation Settings ----------\n\n"},{"text":" Name: ","hoverEvent":{"action":"show_text","contents":"The name of the attack animation"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:edit/attacks {i:$(index),name:\"$(name)\"}"}},{"text":" $(name) ","color":"gold","hoverEvent":{"action":"show_text","contents":"Click to edit the attack animation name (When the command shows up in your chat, edit the value between the quotation marks, and press Enter)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:edit/attacks {i:$(index),name:\"$(name)\"}"}},{"text":"\n\n"},{"text":" Directional: ","hoverEvent":{"action":"show_text","contents":"If the attack is directional, meaning the mob must be facing the player that's being attacked within the distance range"}},{"text":" [$(dir)] ","color":"green","hoverEvent":{"action":"show_text","contents":"Click to Toggle"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_dir {index:$(index),id:\"$(id)\",dir:\"$(dir)\"}"}},{"text":"\n"},{"text":" Damage:     ","hoverEvent":{"action":"show_text","contents":"The amount of damage this attack will inflict on the player (set to -1 to use the damage amount set in the Model AI Settings menu). Does not apply if using Projectile."}},{"text":" \u25bc ","color":"green","hoverEvent":{"action":"show_text","contents":"Decrease the attack damage"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_damage {index:$(index),id:\"$(id)\",damage:$(damage),action:0}"}},{"text":"$(damage_text)","color":"yellow"},{"text":" \u25b2 ","color":"green","hoverEvent":{"action":"show_text","contents":"Increase the attack damage"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_damage {index:$(index),id:\"$(id)\",damage:$(damage),action:1}"}},{"text":"\n"},{"text":" Distance:   ","hoverEvent":{"action":"show_text","contents":"The distance a player must be within in order for the mob to use this attack animation"}},{"text":" \u25bc ","color":"green","hoverEvent":{"action":"show_text","contents":"Decrease the attack distance"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_distance {index:$(index),id:\"$(id)\",distance:$(dist_int),action:0}"}},{"text":"$(distance) blocks","color":"yellow"},{"text":" \u25b2 ","color":"green","hoverEvent":{"action":"show_text","contents":"Increase the attack distance"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_distance {index:$(index),id:\"$(id)\",distance:$(dist_int),action:1}"}},{"text":"\n"},{"text":" Hit Timing:   ","hoverEvent":{"action":"show_text","contents":"The timing in which the player will be hit during the animation (measured as a percentage of the overall animation time)"}},{"text":" \u25bc ","color":"green","hoverEvent":{"action":"show_text","contents":"Decrease the hit timing"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_impact {index:$(index),id:\"$(id)\",action:0}"}},{"text":"$(impact_text)","color":"yellow"},{"text":" \u25b2 ","color":"green","hoverEvent":{"action":"show_text","contents":"Increase the hit timing"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_impact {index:$(index),id:\"$(id)\",action:1}"}},{"text":"\n"},{"text":" Cooldown:   ","hoverEvent":{"action":"show_text","contents":"The amount of time to wait after this attack before the mob can attack again"}},{"text":" \u25bc ","color":"green","hoverEvent":{"action":"show_text","contents":"Decrease the cooldown time"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_cooldown {index:$(index),id:\"$(id)\",action:0}"}},{"text":"$(cooldown) seconds","color":"yellow"},{"text":" \u25b2 ","color":"green","hoverEvent":{"action":"show_text","contents":"Increase the cooldown time"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_cooldown {index:$(index),id:\"$(id)\",action:1}"}},{"text":"\n"},{"text":" Projectile: ","hoverEvent":{"action":"show_text","contents":"If the attack should fire a projectile at the target (Note: The Damage setting does not apply to projectile attacks)"}},{"text":" [$(projectile)] ","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":"Click to select a projectile type"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/projectile {index:$(index),id:\"$(id)\"}"}},{"storage":"ml_aj:logic","nbt":"data.player.temp.proj_speed","interpret":true}]

$execute unless data storage ml_aj:logic {data:{player:{temp:{projectile:"None"}}}} run tellraw @s [{"text":"","color":"#C29C54","hoverEvent":{"action":"show_text","contents":"Click to set the nbt data for the projectile entity (When the command shows up in your chat, edit the value after the nbt: and press Enter)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:edit/projectile {i:$(index),nbt:$(proj_suggest)}"}},{"text":"                "},{"text":"NBT: "},{"storage":"ml_aj:logic","nbt":"data.player.temp.proj_nbt"}]

$tellraw @s [{"text":"\n","color":"#C29C54"},{"text":" Callback Command: ","hoverEvent":{"action":"show_text","contents":"The command to run during the attack animation"}},{"storage":"ml_aj:logic","nbt":"data.player.temp.command","color":"dark_green","hoverEvent":{"action":"show_text","contents":"Click to set a callback command (When the command shows up in your chat, edit the value between the quotation marks, and press Enter)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:edit/callback {i:$(index),cmd:'$(suggest)'}"}}]

$execute unless data storage ml_aj:logic {data:{player:{temp:{cmd_time:""}}}} run tellraw @s [{"text":"","color":"#C29C54"},{"text":" Callback Timing:   ","hoverEvent":{"action":"show_text","contents":"When the callback command will run. First Frame = beginning of animation. Hit Time = when the player is hit by the attack. Last Frame = end of animation."}},{"text":" [$(cmd_time)] ","color":"green","hoverEvent":{"action":"show_text","contents":"Click to Toggle"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_cmd_time {index:$(index),id:\"$(id)\",time:\"$(cmd_time)\"}"}}]

$execute unless data storage ml_aj:logic {data:{player:{temp:{cmd_entity:""}}}} run tellraw @s [{"text":"","color":"#C29C54"},{"text":" Callback Entity:   ","hoverEvent":{"action":"show_text","contents":"If the command will be executed as the aj.rig_root model, or as the entity being attacked. If executed as the target entity, the aj.rig_root model will have the tag aj.rig_root_attacker for the duration of the command."}},{"text":" [$(cmd_entity)] ","color":"green","hoverEvent":{"action":"show_text","contents":"Click to Toggle"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/settings/edit_cmd_entity {index:$(index),id:\"$(id)\",entity:\"$(cmd_entity)\"}"}}]

$tellraw @s [{"text":"\n------------------------------------------\n\n","color":"#C29C54"},{"text":" [Return] ","color":"#DD743B","hoverEvent":{"action":"show_text","contents":"Return to the Attack Animations menu"},"clickEvent":{"action":"run_command","value":"/function ml_aj:model/chat/anim/attack/display {id:\"$(id)\"}"}},{"text":"\n"}]
