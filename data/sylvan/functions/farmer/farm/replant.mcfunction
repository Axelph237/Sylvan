# Age 7 crops
execute if block ~ ~0.2 ~ minecraft:wheat[age=7] run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:wheat[age=0] destroy
execute if block ~ ~0.2 ~ minecraft:potatoes[age=7] run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:potatoes[age=0] destroy
execute if block ~ ~0.2 ~ minecraft:carrots[age=7] run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:carrots[age=0] destroy
# Crops in #single_crops
execute if block ~ ~0.2 ~ minecraft:sweet_berry_bush[age=3] run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:sweet_berry_bush[age=1] destroy
execute if block ~ ~0.2 ~ minecraft:beetroots[age=3] run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:beetroots[age=0] destroy
execute if block ~ ~0.2 ~ minecraft:nether_wart[age=3] run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:nether_wart[age=0] destroy
execute if block ~ ~0.2 ~ minecraft:pumpkin run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:air destroy
execute if block ~ ~0.2 ~ minecraft:melon run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:air destroy
# Crops in #double_crops
execute if block ~ ~0.2 ~ minecraft:sugar_cane if block ~ ~-0.8 ~ minecraft:sugar_cane run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:air destroy
execute if block ~ ~0.2 ~ minecraft:cactus if block ~ ~-0.8 ~ minecraft:cactus run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:air destroy
execute if block ~ ~0.2 ~ minecraft:bamboo if block ~ ~-0.8 ~ minecraft:bamboo run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:air destroy
execute if block ~ ~0.2 ~ minecraft:kelp_plant if block ~ ~-0.8 ~ minecraft:kelp_plant run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:water destroy
# Cocoa
execute if block ~ ~0.2 ~ minecraft:cocoa[age=2,facing=north] run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:cocoa[age=0,facing=north] destroy
execute if block ~ ~0.2 ~ minecraft:cocoa[age=2,facing=south] run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:cocoa[age=0,facing=south] destroy
execute if block ~ ~0.2 ~ minecraft:cocoa[age=2,facing=east] run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:cocoa[age=0,facing=east] destroy
execute if block ~ ~0.2 ~ minecraft:cocoa[age=2,facing=west] run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:cocoa[age=0,facing=west] destroy
# If unspecified, simiply destroy (this only works for plants with ages 0-7) [also checks against pumpkin and melon stems]
execute unless block ~ ~0.2 ~ #sylvan:farmable unless block ~ ~0.2 ~ minecraft:pumpkin_stem unless block ~ ~0.2 ~ minecraft:melon_stem if block ~ ~0.2 ~ #minecraft:crops[age=7] run fill ~ ~0.2 ~ ~ ~0.2 ~ minecraft:air destroy
