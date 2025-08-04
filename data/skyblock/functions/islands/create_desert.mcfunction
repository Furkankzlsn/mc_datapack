# Desert Island Oluşturucu - Görev 3 sonrası açılır

# Konum: 100 blok uzakta
tp @s 100 100 100

# Desert platform
fill 98 99 98 102 99 102 sand
fill 99 99 99 101 99 101 sandstone

# Piramit temeli
fill 97 100 97 103 100 103 sandstone
fill 98 101 98 102 101 102 sandstone  
fill 99 102 99 101 102 101 sandstone
setblock 100 103 100 sandstone

# Hazine sandığı (piramit içinde)
setblock 100 100 100 chest[facing=north]{Items:[{Slot:0b,id:"minecraft:gold_ingot",Count:4b},{Slot:1b,id:"minecraft:diamond",Count:2b},{Slot:2b,id:"minecraft:emerald",Count:3b},{Slot:3b,id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:sharpness",lvl:3s}]}}]}

# Kaktüs farm alanı
fill 95 100 95 96 100 96 sand
setblock 95 101 95 cactus
setblock 96 101 96 cactus

# Spawner yerleştir (Zombie Miner)
setblock 99 101 97 spawner{SpawnData:{entity:{id:"minecraft:zombie",CustomName:'{"text":"Maden Zombie","color":"yellow"}',HandItems:[{id:"minecraft:iron_pickaxe",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}},SpawnRange:3s,RequiredPlayerRange:12s,Delay:300s}

# Portal back (Ender Pearl kullanımı)
setblock 103 101 100 end_gateway

tellraw @s {"text":"🏜️ Desert Island Keşfedildi!","color":"gold","bold":true}
tellraw @s {"text":"✦ Piramit hazinesi bulundu","color":"yellow"}
tellraw @s {"text":"✦ Maden Zombie spawner aktif","color":"red"} 
tellraw @s {"text":"✦ Kaktüs farm hazır","color":"green"}

# Achievement
advancement grant @s only skyblock:desert_explorer
