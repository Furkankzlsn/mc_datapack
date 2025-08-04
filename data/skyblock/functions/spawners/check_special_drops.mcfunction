# Özel Loot Sistemi

# %30 şans ile toprak düşür
execute if predicate skyblock:random_30 run summon item ~ ~1 ~ {Item:{id:"minecraft:dirt",Count:2b},CustomName:'{"text":"Büyülü Toprak","color":"brown"}'}

# %20 şans ile kömür düşür  
execute if predicate skyblock:random_20 run summon item ~ ~1 ~ {Item:{id:"minecraft:coal",Count:1b}}

# %10 şans ile demir düşür
execute if predicate skyblock:random_10 run summon item ~ ~1 ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}

# %5 şans ile altın düşür
execute if predicate skyblock:random_05 run summon item ~ ~1 ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}

# Özel mesaj
execute if entity @e[type=item,nbt={Item:{id:"minecraft:dirt"}},distance=..2] run tellraw @p {"text":"[ÖZEL LOOT] Büyülü toprak kazandınız!","color":"green"}

# Normal bone'ları kaldır
kill @e[type=item,nbt={Item:{id:"minecraft:bone"}},distance=..3]
