# Summon floor lamp
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["dp.furniture","dp.lamp","dp.on"],DisabledSlots:4144959,Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}]}

# Light source (hidden light block)
setblock ~ ~1 ~ minecraft:light[level=15]

execute if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand count
particle minecraft:glow ~ ~1 ~ 0.2 0.5 0.2 0.01 50
playsound minecraft:block.glass.place block @a ~ ~ ~ 1 1.2