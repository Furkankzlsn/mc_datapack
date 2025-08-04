# Zombie Miner Özel Davranışları

# Maden aleti kontrol
execute unless entity @s[nbt={HandItems:[{id:"minecraft:iron_pickaxe"},{}]}] run item replace entity @s weapon.mainhand with iron_pickaxe

# Özel mining davranışı - yakındaki stone'ları kır
execute at @s if block ~ ~-1 ~ stone run setblock ~ ~-1 ~ air destroy
execute at @s if block ~1 ~ ~ stone run setblock ~1 ~ ~ air destroy  
execute at @s if block ~-1 ~ ~ stone run setblock ~-1 ~ ~ air destroy
execute at @s if block ~ ~ ~1 stone run setblock ~ ~ ~1 air destroy
execute at @s if block ~ ~ ~-1 stone run setblock ~ ~ ~-1 air destroy

# Mining efekti
particle block stone ~ ~1 ~ 0.3 0.5 0.3 0.1 3

# Özel mining sesi
execute if entity @s[nbt={HurtTime:0s}] if predicate skyblock:random_10 run playsound block.stone.break master @a ~ ~ ~ 0.8 0.8

# Güçlü özellikler
data merge entity @s {Attributes:[{Name:"generic.max_health",Base:30.0d},{Name:"generic.attack_damage",Base:4.0d},{Name:"generic.movement_speed",Base:0.25d}]}
