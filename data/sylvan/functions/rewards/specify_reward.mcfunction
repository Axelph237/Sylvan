scoreboard players reset @s rewards
execute if data entity @s SelectedItem.tag{reward:"nk_book"} run function sylvan:rewards/nk_book
execute if data entity @s SelectedItem.tag{reward:"rnd_flower"} run function sylvan:rewards/rnd_flower
