# Give dragon egg (random variant)
summon armor_stand ~ ~1 ~ {NoGravity:1b,Invisible:1b,Tags:["be.dragon_egg","be.temp"],ArmorItems:[{},{},{},{id:"minecraft:dragon_egg",Count:1b}]}

# Random variant (1-5)
execute store result score @e[tag=be.temp,limit=1] be.variant run say 1

# Tag removal
tag @e[tag=be.temp] remove be.temp

tellraw @s ["",{"text":"[Beyond-End] ","color":"dark_purple","bold":true},{"text":"Dragon egg placed! Heat it to hatch.","color":"gray"}]
playsound minecraft:block.glass.place block @a ~ ~ ~ 1 1