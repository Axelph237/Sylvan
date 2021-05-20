# This part selects the item, transfers it, and kills it
tag @e[type=item,sort=random,limit=1,distance=..1.5,nbt=!{Item:{tag:{}}},tag=!nopickup] add collectable
# Check for flower
function sylvan:farmer/favorite_flower/l_timer_query
execute if score $check long_timers matches 1 as @e[tag=collectable] if predicate sylvan:natural_flower run tag @s add flower
execute as @e[tag=spirit,limit=1,sort=nearest,distance=..0.5] at @s if entity @e[tag=flower,distance=..1.5] run function sylvan:farmer/favorite_flower/query
# Continue function
execute store success score $testing chest_vars run data modify entity @e[tag=spirit,limit=1,sort=nearest,distance=..0.5] ArmorItems[].tag.Inventory append from entity @e[limit=1,sort=nearest,type=item,tag=collectable] Item
kill @e[tag=collectable]
# This part gets total number of items in the inventory
execute store result score @s chest_vars run data get entity @e[tag=spirit,limit=1,sort=nearest,distance=..0.5] ArmorItems[].tag.Inventory
execute store result entity @e[tag=spirit,limit=1,sort=nearest,distance=..0.5] ArmorItems[].tag.Inventory[-1].Slot byte 1 run scoreboard players get @s chest_vars
# This checks if this should run again, or return to a chest
execute unless score @s chest_vars matches 20.. if entity @e[type=item,distance=..1,nbt=!{Item:{tag:{}}},tag=!nopickup,tag=!collectable] run function sylvan:farmer/collect
