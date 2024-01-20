## aj.rig_root entity context
## "name": The model name

$execute unless score @s aj.$(name).export_version = aj.$(name).export_version aj.i run return 1
execute if data entity @s {glow_color_override:16711680} run return 1

return 0
