# Görev 3 Tamamlandı: 64 Sugar Cane

# Clear items
clear @s sugar_cane 64

# Ödül ver
give @s diamond 2
give @s golden_apple 1
give @s ender_pearl 4

# İlerleme
scoreboard players set @s sb_quest 4
scoreboard players set @s sb_progress 0

# Özel spawner ver!
give @s spawner{display:{Name:'{"text":"Özel Skeleton Spawner","color":"red","bold":true}',Lore:['{"text":"Bu spawner özel skeleton üretir","color":"gray"}','{"text":"Kılıçlı skeleton ile loot kazanın!","color":"yellow"}']},BlockEntityTag:{SpawnData:{entity:{id:"minecraft:skeleton",HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],CustomName:'{"text":"Kılıçlı Skeleton","color":"red"}'}},SpawnRange:4s,RequiredPlayerRange:16s,Delay:200s,MinSpawnDelay:200s,MaxSpawnDelay:800s,MaxNearbyEntities:6s}} 1

# Mesaj
tellraw @s {"text":"=== GÖREV TAMAMLANDI ===","color":"gold","bold":true}
tellraw @s {"text":"✓ 64 Sugar Cane topladınız!","color":"green"}
tellraw @s {"text":"Ödül: 2 Diamond, 1 Golden Apple, 4 Ender Pearl","color":"yellow"}
tellraw @s {"text":"🎉 ÖZEL ÖDÜL: Kılıçlı Skeleton Spawner!","color":"red","bold":true}
tellraw @s {"text":"Yeni Ada: Desert Island açıldı!","color":"gold"}

# Ses efekti
playsound entity.enderdragon.growl master @s ~ ~ ~ 1 0.8

# Ada açılışı
scoreboard players set @s sb_island 2

# Achievement
advancement grant @s only skyblock:sugar_master
