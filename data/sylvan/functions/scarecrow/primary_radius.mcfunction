tp @s ~ ~ ~ ~15 ~
execute if entity @e[tag=sylvan,distance=..6] run particle dust 0.871 0.545 0.173 1 ^ ^ ^6 0 0 0 0 1 normal
execute if entity @e[tag=sylvan,distance=..6] run particle dust 0.871 0.545 0.173 1 ^ ^ ^-6 0 0 0 0 1 normal
execute if entity @e[tag=sylvan,distance=..6] run particle dust 0.871 0.545 0.173 1 ^6 ^ ^ 0 0 0 0 1 normal
execute if entity @e[tag=sylvan,distance=..6] run particle dust 0.871 0.545 0.173 1 ^-6 ^ ^ 0 0 0 0 1 normal
execute if entity @e[tag=sylvan,distance=..12,nbt={SelectedItem:{id:"minecraft:carved_pumpkin"}}] run function sylvan:scarecrow/distance_radius
execute if entity @e[tag=sylvan,distance=..12,nbt={SelectedItem:{id:"minecraft:armor_stand"}}] run function sylvan:scarecrow/distance_radius
execute if entity @e[tag=sylvan,distance=..12,nbt={Inventory:[{Slot:-106b,id:"minecraft:carved_pumpkin"}]}] run function sylvan:scarecrow/distance_radius
execute if entity @e[tag=sylvan,distance=..12,nbt={Inventory:[{Slot:-106b,id:"minecraft:armor_stand"}]}] run function sylvan:scarecrow/distance_radius
