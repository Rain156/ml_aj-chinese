## Place text to convert in ml_aj:logic data.text.interpret.input, then run this function
## Converted text is placed in data storage ml_aj:logic data.text.interpret.output as a json string

execute if data storage ml_aj:logic {data:{text:{interpret:{input:""}}}} run return run data modify storage ml_aj:logic data.text.interpret.output set value '{"text":""}'
execute if data storage ml_aj:logic {data:{text:{interpret:{input:''}}}} run return run data modify storage ml_aj:logic data.text.interpret.output set value '{"text":""}'

function ml_aj:system/data/json/check_json

execute if data storage ml_aj:logic {data:{text:{interpret:{invalid_json:1b}}}} run function ml_aj:system/data/json/to_json
execute if data storage ml_aj:logic {data:{text:{interpret:{invalid_json:0b}}}} run data modify storage ml_aj:logic data.text.interpret.output set from storage ml_aj:logic data.text.interpret.input
