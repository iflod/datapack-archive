# Deco-Plus Initialization
scoreboard objectives add dp.rotation dummy
scoreboard objectives add dp.interact minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add dp.block_id dummy
scoreboard objectives add dp.placed dummy

# Setup teams for colors
team add dp.red
team add dp.blue
team add dp.green
team add dp.white
team modify dp.red color red
team modify dp.blue color blue
team modify dp.green color green
team modify dp.white color white

tellraw @a ["",{"text":"[Deco-Plus] ","color":"aqua","bold":true},{"text":"Datapack loaded successfully! v3.7.1","color":"gray"}]
tellraw @a ["",{"text":"Created by: ","color":"gray"},{"text":"BuilderPro_MC","color":"white"}]
tellraw @a ["",{"text":"• ","color":"dark_gray"},{"text":"350+ new decoration blocks","color":"gray"}]
tellraw @a ["",{"text":"• ","color":"dark_gray"},{"text":"Type ","color":"gray"},{"text":"/function deco_plus:give/give_all_blocks","color":"yellow"},{"text":" for catalog","color":"gray"}]
