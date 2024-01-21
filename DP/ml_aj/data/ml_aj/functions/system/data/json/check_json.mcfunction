## Place text to check in ml_aj:logic data.text.interpret.input, then run this function
## Valid JSON text = execute if data storage ml_aj:logic {data:{text:{interpret:{invalid_json:0b}}}} run...

data modify storage ml_aj:logic data.text.interpret.invalid_json set value 1b
data modify storage ml_aj:logic data.text.interpret.check set string storage ml_aj:logic data.text.interpret.input 0 2

#Check if the text starts with an object {"
execute store success storage ml_aj:logic data.text.interpret.invalid_json byte 1 run data modify storage ml_aj:logic data.text.interpret.check set value '{"'

#Now check if the text starts with an array [{"
execute if data storage ml_aj:logic {data:{text:{interpret:{invalid_json:1b}}}} run data modify storage ml_aj:logic data.text.interpret.check set string storage ml_aj:logic data.text.interpret.input 0 2
execute if data storage ml_aj:logic {data:{text:{interpret:{invalid_json:1b}}}} store success storage ml_aj:logic data.text.interpret.invalid_json byte 1 run data modify storage ml_aj:logic data.text.interpret.check set value '[{'

#Now check if the text starts with an array and string [""
execute if data storage ml_aj:logic {data:{text:{interpret:{invalid_json:1b}}}} run data modify storage ml_aj:logic data.text.interpret.check set string storage ml_aj:logic data.text.interpret.input 0 4
execute if data storage ml_aj:logic {data:{text:{interpret:{invalid_json:1b}}}} store success storage ml_aj:logic data.text.interpret.invalid_json byte 1 run data modify storage ml_aj:logic data.text.interpret.check set value '["",'
