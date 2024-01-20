## function ml_ces:system/tick

scoreboard players set #ml_temp ml_ces.count 0

#Keep the uuid dictionary clean by removing ids that don't exist anymore
execute if data storage ml_ces:logic data.uuid.dictionary[0] run function ml_ces:system/data/uuid/cleanup

#Refresh players if the look at/away events are enabled again
execute if data storage ml_ces:logic {data:{event:{player:{use_look:1b}}}} run advancement revoke @a only ml_ces:player/look_at
