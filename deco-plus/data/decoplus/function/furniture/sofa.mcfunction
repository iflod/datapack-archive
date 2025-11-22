# Summon modern sofa (3 blocks wide)
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["dp.furniture","dp.sofa","dp.sofa_center"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:white_wool",Count:1b}]}

summon armor_stand ~-1 ~ ~ {NoGravity:1b,Invisible:1b,Tags:["dp.furniture","dp.sofa"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:white_wool",Count:1b}]}

summon armor_stand ~1 ~ ~ {NoGravity:1b,Invisible:1b,Tags:["dp.furniture","dp.sofa"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:white_wool",Count:1b}]}

# Backrest
summon armor_stand ~ ~0.5 ~0.3 {NoGravity:1b,Invisible:1b,Small:1b,Tags:["dp.furniture","dp.sofa_back"],ArmorItems:[{},{},{},{id:"minecraft:white_carpet",Count:1b}]}

execute if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand count
particle minecraft:cloud ~ ~0.5 ~ 1 0.5 0.5 0.01 50