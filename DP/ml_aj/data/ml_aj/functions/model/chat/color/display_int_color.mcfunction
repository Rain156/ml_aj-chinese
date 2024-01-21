## Get a color text from a color integer
## "color": The color to display

$data modify storage ml_aj:logic data.player.temp.color_text set from storage ml_aj:logic data.menu.colors[{color:$(color)}].text
