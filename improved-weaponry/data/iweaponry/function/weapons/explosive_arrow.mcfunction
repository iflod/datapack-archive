# Explosive Arrow Impact
summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:3b,powered:1b}
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2 1

# Damage entities in area
execute as @e[type=#minecraft:hostile,distance=..5] run damage @s 20 minecraft:explosion

kill @s