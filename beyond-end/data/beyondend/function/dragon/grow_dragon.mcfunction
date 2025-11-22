# Summon adult dragon
execute if entity @s[tag=be.fire] run summon ender_dragon ~ ~ ~ {Tags:["be.tamed","be.fire"],CustomName:'{"text":"Fire Dragon","color":"red"}',Health:200f,Attributes:[{Name:"generic.max_health",Base:200}]}

execute if entity @s[tag=be.frost] run summon ender_dragon ~ ~ ~ {Tags:["be.tamed","be.frost"],CustomName:'{"text":"Frost Dragon","color":"aqua"}',Health:200f,Attributes:[{Name:"generic.max_health",Base:200}]}

execute if entity @s[tag=be.lightning] run summon ender_dragon ~ ~ ~ {Tags:["be.tamed","be.lightning"],CustomName:'{"text":"Lightning Dragon","color":"yellow"}',Health:200f,Attributes:[{Name:"generic.max_health",Base:200}]}

execute if entity @s[tag=be.void] run summon ender_dragon ~ ~ ~ {Tags:["be.tamed","be.void"],CustomName:'{"text":"Void Dragon","color":"dark_purple"}',Health:180f,Attributes:[{Name:"generic.max_health",Base:180}]}

execute if entity @s[tag=be.ender] run summon ender_dragon ~ ~ ~ {Tags:["be.tamed","be.ender"],CustomName:'{"text":"Ender Dragon","color":"dark_purple"}',Health:250f,Attributes:[{Name:"generic.max_health",Base:250}]}

# Effects
particle minecraft:explosion_emitter ~ ~1 ~ 1 1 1 0 5
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 3 0.8

# Advancement
advancement grant @a[distance=..15] only beyond_end:tame_dragon

tellraw @a[distance=..15] ["",{"text":"[Beyond-End] ","color":"dark_purple","bold":true},{"text":"Your dragon has fully grown!","color":"gray"}]

# Remove baby
kill @s