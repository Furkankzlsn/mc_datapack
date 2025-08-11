# Dirt Skeleton özel loot
# Tekrarlı çalışmayı engelle
scoreboard players set @s mob_proc 1
# Loot: yüksek toprak, orta kemik, düşük kömür
# 0-99 arası rasgele sayı üretmek için score gerekirse ekleme yapılabilir; basit olasılık için üç ayrı summon + execute if random
execute if score @s mob_proc matches 1 run loot spawn ~ ~ ~ loot ornek:entities/dirt_skeleton
