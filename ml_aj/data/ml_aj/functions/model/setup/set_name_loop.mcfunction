## function ml_aj:model/setup/set_name
## function ml_aj:model/setup/set_name_loop

data modify storage ml_aj:logic data.temp.tag_a set string storage ml_aj:logic data.temp.tags[-1] 0 3
data modify storage ml_aj:logic data.temp.tag_b set string storage ml_aj:logic data.temp.tags[-1] -5

#The format is aj.NAME.root
execute if data storage ml_aj:logic {data:{temp:{tag_a:"aj."}}} if data storage ml_aj:logic {data:{temp:{tag_b:".root"}}} run data modify entity @s item.tag.data.name set string storage ml_aj:logic data.temp.tags[-1] 3 -5

data remove storage ml_aj:logic data.temp.tags[-1]
execute if data storage ml_aj:logic data.temp.tags[0] unless data entity @s item.tag.data.name run function ml_aj:model/setup/set_name_loop
