# Beyond-End Initialization
scoreboard objectives add be.egg_heat dummy
scoreboard objectives add be.hatch_time dummy
scoreboard objectives add be.dragon_age dummy
scoreboard objectives add be.dragon_hp dummy
scoreboard objectives add be.tame_level dummy
scoreboard objectives add be.hunger dummy
scoreboard objectives add be.flying dummy
scoreboard objectives add be.breath_cd dummy
scoreboard objectives add be.dragon_type dummy

# Dragon variants (1=Fire, 2=Frost, 3=Lightning, 4=Void, 5=Ender)
scoreboard objectives add be.variant dummy

# Player interactions
scoreboard objectives add be.feed minecraft.used:minecraft.cooked_beef
scoreboard objectives add be.mount minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add be.sneak minecraft.custom:minecraft.sneak_time

tellraw @a ["",{"text":"[Beyond-End] ","color":"dark_purple","bold":true},{"text":"Datapack loaded! v4.2.8","color":"gray"}]
tellraw @a ["",{"text":"Created by: ","color":"gray"},{"text":"DragonMaster_Ender","color":"white"}]
tellraw @a ["",{"text":"• ","color":"dark_gray"},{"text":"Hatch, tame, and ride dragons!","color":"gray"}]
tellraw @a ["",{"text":"• ","color":"dark_gray"},{"text":"5 dragon variants available","color":"gray"}]