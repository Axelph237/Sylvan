# Check basic crops [ages 0-7]
function sylvan:farmer/search/crop_check
# Rest of raycast
execute if score $hit farmer_search matches 1 positioned ~ ~ ~ align xyz positioned ~0.5 ~ ~0.5 run function sylvan:farmer/farm/pick
scoreboard players add $z farmer_search 1
execute if score $z farmer_search matches ..7 if score $hit farmer_search matches 0 positioned ~ ~ ~1 run function sylvan:farmer/search/z
