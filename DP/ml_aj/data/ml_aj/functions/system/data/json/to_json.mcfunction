## Convert a text string into a json string
## Place text to convert in ml_aj:logic data.text.interpret.input, then run this function
## Converted text is placed in data storage ml_aj:logic data.text.interpret.output

execute positioned 0 -64 0 summon minecraft:armor_stand run function ml_aj:system/data/json/to_json_final
