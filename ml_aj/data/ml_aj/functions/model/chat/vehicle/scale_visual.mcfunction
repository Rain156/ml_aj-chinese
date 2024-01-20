## player context
## "id": The model's UUID string

$execute as $(id) store result score #ml_temp ml_aj.temp run function ml_aj:model/vehicle/execute {command:"function ml_aj:model/chat/vehicle/scale_visual_final"}

execute if score #ml_temp ml_aj.temp matches 0 run function ml_ces:event/schedule/set {time:1,measure:"t",command:'function ml_aj:system/player/notice/display {text:"You must first confirm the current AI Settings in order to visualize the mob scale size.",color:"red",bold:false}'}

$function ml_aj:model/chat/vehicle/display {id:"$(id)"}
