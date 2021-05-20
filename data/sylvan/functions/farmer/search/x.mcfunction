scoreboard players set $y farmer_search 0
function sylvan:farmer/search/y
scoreboard players add $x farmer_search 1
execute if score $x farmer_search matches ..7 if score $hit farmer_search matches 0 positioned ~1 ~ ~ run function sylvan:farmer/search/x
