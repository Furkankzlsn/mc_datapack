# Maden Zombie Özel Drop Sistemi

# %40 şans ile demir cevheri
execute if predicate skyblock:random_30 run summon item ~ ~1 ~ {Item:{id:"minecraft:iron_ore",Count:1b}}

# %25 şans ile kömür cevheri
execute if predicate skyblock:random_20 run summon item ~ ~1 ~ {Item:{id:"minecraft:coal_ore",Count:1b}}

# %15 şans ile altın cevheri
execute if predicate skyblock:random_10 run summon item ~ ~1 ~ {Item:{id:"minecraft:gold_ore",Count:1b}}

# %5 şans ile elmas cevheri
execute if predicate skyblock:random_05 run summon item ~ ~1 ~ {Item:{id:"minecraft:diamond_ore",Count:1b}}

# Özel mesaj
execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ore"}},distance=..2] run tellraw @p {"text":"⛏️ [MADEN] Demir cevheri bulundu!","color":"white"}
execute if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_ore"}},distance=..2] run tellraw @p {"text":"💎 [MADEN] Elmas cevheri bulundu!","color":"aqua"}

# Normal rotten flesh'i kaldır
kill @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..3]

# Mining efekti
particle block iron_ore ~ ~1 ~ 0.5 0.5 0.5 0.1 5
