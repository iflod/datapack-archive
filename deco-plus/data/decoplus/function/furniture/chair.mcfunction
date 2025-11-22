# Summon modern chair
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["dp.furniture","dp.chair"],DisabledSlots:4144959,Pose:{  Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:quartz_stairs",Count:1b}]}

# Place invisible barrier for sitting
setblock ~ ~ ~ minecraft:barrier

# Decrease item
execute if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand count

particle minecraft:cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.01 20
playsound minecraft:block.wood.place block @a ~ ~ ~ 1 0.8