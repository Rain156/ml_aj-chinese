## function ml_aj:model/chat/anim/display
## aj.rig_root entity context
## "impact": The impact amount

$data modify storage ml_aj:logic data.player.temp.impact_text set value "$(impact)%"
execute if data storage ml_aj:logic {data:{player:{temp:{impact_text:"0%"}}}} run data modify storage ml_aj:logic data.player.temp.impact_text set value "First Frame"
execute if data storage ml_aj:logic {data:{player:{temp:{impact_text:"100%"}}}} run data modify storage ml_aj:logic data.player.temp.impact_text set value "Last Frame"
