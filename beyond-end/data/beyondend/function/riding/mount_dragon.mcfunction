# Check if holding dragon saddle
execute unless entity @s[nbt={SelectedItem:{tag:{be_dragon_saddle:1b}}}] run return 0

# Find nearest fully tamed dragon
execute as @e[type=ender_dragon,tag=be.fully_tamed,distance=..5,limit=1,sort=nearest] at @s run ride @p mount @s

# Set flying score
execute if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:ender_dragon"}}}] run scoreboard players set @s be.flying 1

# Effects
playsound minecraft:entity.horse.saddle player @a ~ ~ ~ 1 1
tellraw @s ["",{"text":"[Beyond-End] ","color":"dark_purple","bold":true},{"text":"Mounted dragon! Use ","color":"gray"},{"text":"SPACE","color":"yellow"},{"text":" to fly higher","color":"gray"}]

# Advancement
advancement grant @s only beyond_end:ride_dragon