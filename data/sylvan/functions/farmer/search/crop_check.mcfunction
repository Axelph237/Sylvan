# Check basic crops [ages 0-7]
execute if block ~ ~ ~ #sylvan:farmable[age=7] run scoreboard players set $hit farmer_search 1
# Check double height crops [with base block]
execute if block ~ ~ ~ #sylvan:double_crops if block ~ ~-1 ~ #sylvan:double_crops run scoreboard players set $hit farmer_search 1
# Single Blocks
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=3] run scoreboard players set $hit farmer_search 1
execute if block ~ ~ ~ minecraft:beetroots[age=3] run scoreboard players set $hit farmer_search 1
execute if block ~ ~ ~ minecraft:nether_wart[age=3] run scoreboard players set $hit farmer_search 1
execute if block ~ ~ ~ minecraft:cocoa[age=2] run scoreboard players set $hit farmer_search 1
execute if block ~ ~ ~ minecraft:melon run scoreboard players set $hit farmer_search 1
execute if block ~ ~ ~ minecraft:pumpkin run scoreboard players set $hit farmer_search 1
# Check for modded crops [ages 0-7] (Basic and rudementary)
execute unless block ~ ~0.2 ~ minecraft:pumpkin_stem unless block ~ ~0.2 ~ minecraft:melon_stem unless block ~ ~0.2 ~ #sylvan:farmable if block ~ ~0.2 ~ #minecraft:crops[age=7] run scoreboard players set $hit farmer_search 1
