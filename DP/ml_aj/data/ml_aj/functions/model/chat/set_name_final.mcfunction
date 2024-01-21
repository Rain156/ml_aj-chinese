## function ml_aj:model/chat/set_name
## aj.rig_root entity context

#Set the raw text if the text isn't blank
execute unless data storage ml_aj:logic {data:{text:{interpret:{output:'{"text":""}'}}}} run data modify entity @s item.tag.data.mob_name_raw set from storage ml_aj:logic data.text.interpret.input
execute if data storage ml_aj:logic {data:{text:{interpret:{output:'{"text":""}'}}}} run data remove entity @s item.tag.data.mob_name_raw

data modify entity @s item.tag.data.mob_name set from storage ml_aj:logic data.text.interpret.output
execute if data storage ml_aj:logic {data:{text:{interpret:{output:'{"text":""}'}}}} run data remove entity @s item.tag.data.mob_name
execute unless data storage ml_aj:logic {data:{text:{interpret:{output:'{"text":""}'}}}} run data modify entity @s CustomName set from storage ml_aj:logic data.text.interpret.output
execute if data storage ml_aj:logic {data:{text:{interpret:{output:'{"text":""}'}}}} run data modify entity @s CustomName set value '"AJ Model Root"'

#Pet vehicle name (always set, even if blank)
execute if entity @s[tag=ml_aj.is_pet] if data storage ml_aj:logic {data:{text:{interpret:{output:'{"text":""}'}}}} run data modify storage ml_aj:logic data.text.interpret.output set value '{"text":"Pet"}'
function ml_aj:model/vehicle/execute {command:"data modify entity @s CustomName set from storage ml_aj:logic data.text.interpret.output"}
