scoreboard players set $x farmer_search 0
scoreboard players set $hit farmer_search 0
particle dust 0.129 1.000 0.478 1 ~ ~ ~ 0.25 0.1 0.25 1 10 normal
execute positioned ~-3.5 ~-2.5 ~-3.5 run function sylvan:farmer/search/x
