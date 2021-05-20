scoreboard players set $z farmer_search 0
function sylvan:farmer/search/z
scoreboard players add $y farmer_search 1
execute if score $y farmer_search matches ..5 if score $hit farmer_search matches 0 positioned ~ ~1 ~ run function sylvan:farmer/search/y
