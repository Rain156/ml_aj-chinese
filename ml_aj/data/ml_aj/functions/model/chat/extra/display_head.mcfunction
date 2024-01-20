## funciton ml_aj:model/chat/extra/display_final
## aj.rig_root entity context
## "head": The head name

data modify storage ml_aj:logic data.player.temp.rotation set value "True"
$data modify storage ml_aj:logic data.player.temp.head set value [{"text":" |  ","hoverEvent":{"action":"show_text","contents":"Click to set the name (or tag) of the model's head bone (When the command shows up in your chat, edit the value between the quotation marks, and press Enter)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:edit/head {name:\"$(head)\"}"}},{"text":"Head Bone: ","hoverEvent":{"action":"show_text","contents":"The name of the head bone that will rotate to face the player (or the tag that is used for one or more bones that will rotate)"}},{"text":"$(head)","color":"green"}]
