## aj.rig_root entity context

data modify storage ml_aj:logic data.temp.variant set value {name:"",variant:"default"}
data modify storage ml_aj:logic data.temp.variant.name set from entity @s item.tag.data.name
execute if data entity @s item.tag.data.variant run data modify storage ml_aj:logic data.temp.variant.variant set from entity @s item.tag.data.variant

function ml_aj:model/reset_variant_final with storage ml_aj:logic data.temp.variant
