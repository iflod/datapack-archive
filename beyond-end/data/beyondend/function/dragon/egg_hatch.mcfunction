# Hatching animation
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1
particle minecraft:dragon_breath ~ ~1 ~ 1 1 1 0.1 100
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 2 1.5
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 0.8

# Summon baby dragon based on egg variant
execute if score @s be.variant matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Tags:["be.baby_dragon","be.fire"],CustomName:'{"text":"Baby Fire Dragon","color":"red"}',ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}

execute if score @s be.variant matches 2 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Tags:["be.baby_dragon","be.frost"],CustomName:'{"text":"Baby Frost Dragon","color":"aqua"}',ArmorItems:[{},{},{},{id:"minecraft:light_blue_concrete",Count:1b}]}

execute if score @s be.variant matches 3 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Tags:["be.baby_dragon","be.lightning"],CustomName:'{"text":"Baby Lightning Dragon","color":"yellow"}',ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}]}

execute if score @s be.variant matches 4 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Tags:["be.baby_dragon","be.void"],CustomName:'{"text":"Baby Void Dragon","color":"dark_purple"}',ArmorItems:[{},{},{},{id:"minecraft:purple_concrete",Count:1b}]}

execute if score @s be.variant matches 5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Tags:["be.baby_dragon","be.ender"],CustomName:'{"text":"Baby Ender Dragon","color":"dark_purple"}',ArmorItems:[{},{},{},{id:"minecraft:obsidian",Count:1b}]}

# Advancement
advancement grant @a[distance=..10] only beyond_end:hatch_first_dragon

# Remove egg stand
kill @s
