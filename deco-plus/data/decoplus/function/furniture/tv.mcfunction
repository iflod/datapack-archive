# Summon modern TV
summon armor_stand ~ ~1 ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["dp.furniture","dp.tv"],DisabledSlots:4144959,Rotation:[0f,0f],ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}]}

# TV screen (glowing effect)
summon armor_stand ~ ~1.2 ~-0.1 {NoGravity:1b,Invisible:1b,Small:1b,Marker:1b,Tags:["dp.furniture","dp.tv_screen"],ArmorItems:[{},{},{},{id:"minecraft:cyan_stained_glass_pane",Count:1b}]}

execute if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand count
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.1 0.01 30
playsound minecraft:block.beacon.activate block @a ~ ~ ~ 0.5 2