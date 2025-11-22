# Improved-Weaponry Initialization
scoreboard objectives add iw.damage dummy
scoreboard objectives add iw.cooldown dummy
scoreboard objectives add iw.combo dummy
scoreboard objectives add iw.kills totalKillCount
scoreboard objectives add iw.ability dummy
scoreboard objectives add iw.durability dummy

# Weapon tracking
scoreboard objectives add iw.sword_used minecraft.used:minecraft.netherite_sword
scoreboard objectives add iw.axe_used minecraft.used:minecraft.netherite_axe
scoreboard objectives add iw.bow_used minecraft.used:minecraft.bow

tellraw @a ["",{"text":"[Improved-Weaponry] ","color":"gold","bold":true},{"text":"Datapack loaded! v2.1.4","color":"gray"}]
tellraw @a ["",{"text":"Created by: ","color":"gray"},{"text":"ShadowBlade_YT","color":"white"}]
tellraw @a ["",{"text":"Type ","color":"gray"},{"text":"/function improved_weaponry:give/give_all_weapons","color":"yellow"},{"text":" for test weapons","color":"gray"}]