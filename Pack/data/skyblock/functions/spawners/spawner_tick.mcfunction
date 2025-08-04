# Özel Spawner Sistemleri

# Kılıçlı Skeleton Spawner Kontrol
execute as @e[type=skeleton,name="Kılıçlı Skeleton"] at @s run function skyblock:spawners/sword_skeleton_tick

# Özel mob ölüm kontrolü
execute as @a at @s if entity @e[type=item,nbt={Item:{id:"minecraft:bone"}},distance=..5] run function skyblock:spawners/check_special_drops
