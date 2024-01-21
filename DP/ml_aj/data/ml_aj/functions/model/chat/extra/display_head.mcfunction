## funciton ml_aj:model/chat/extra/display_final
## aj.rig_root entity context
## "head": The head name

data modify storage ml_aj:logic data.player.temp.rotation set value "True"
$data modify storage ml_aj:logic data.player.temp.head set value [{"text":" |  ","hoverEvent":{"action":"show_text","contents":"将要进行旋转的骨骼名称\n(单击以填入要旋转的模型块或模型组)"},"clickEvent":{"action":"suggest_command","value":"/function ml_aj:edit/head {name:\"$(head)\"}"}},{"text":"头部骨骼: ","hoverEvent":{"action":"show_text","contents":"将要进行旋转的骨骼名称\n(单击以填入要旋转的模型块或模型组)"}},{"text":"$(head)","color":"green"}]
