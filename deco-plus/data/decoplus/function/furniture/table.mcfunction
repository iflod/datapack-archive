# Summon wooden table (using multiple armor stands)
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["dp.furniture","dp.table","dp.table_main"],DisabledSlots:4144959,Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:oak_slab",Count:1b}]}

# Table legs
summon armor_stand ~0.3 ~-0.5 ~0.3 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["dp.furniture","dp.table_leg"],Small:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_fence",Count:1b}]}

summon armor_stand ~-0.3 ~-0.5 ~0.3 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["dp.furniture","dp.table_leg"],Small:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_fence",Count:1b}]}

execute if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand count

particle minecraft:cloud ~ ~0.5 ~ 0.5 0.3 0.5 0.01 30