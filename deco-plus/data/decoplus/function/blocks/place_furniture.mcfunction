# Place furniture based on held item
execute if entity @s[nbt={SelectedItem:{tag:{dp_chair:1b}}}] run function deco_plus:furniture/chair
execute if entity @s[nbt={SelectedItem:{tag:{dp_table:1b}}}] run function deco_plus:furniture/table
execute if entity @s[nbt={SelectedItem:{tag:{dp_sofa:1b}}}] run function deco_plus:furniture/sofa
execute if entity @s[nbt={SelectedItem:{tag:{dp_lamp:1b}}}] run function deco_plus:furniture/lamp
execute if entity @s[nbt={SelectedItem:{tag:{dp_tv:1b}}}] run function deco_plus:furniture/tv
execute if entity @s[nbt={SelectedItem:{tag:{dp_computer:1b}}}] run function deco_plus:furniture/computer

# Sound effect
playsound minecraft:block.wood.place block @a ~ ~ ~ 1 1