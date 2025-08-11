# Tek seferlik ada yerleştirme (örnek pakete benzer)
# Zaten yapılmışsa çık (tamamlandı işareti varsa)
execute if score $done island_init matches 1 run return 0
forceload add 0 0
# Yeni referans: sandık konumu 5 83 1, yoksa ada kurulacak
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 79 0 6 85 6 minecraft:air
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 0 79 0 minecraft:bedrock
# Merkez küp (dirt gövde)
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 80 0 2 82 2 minecraft:dirt
# X kolu
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 3 80 0 5 82 2 minecraft:dirt
# Z kolu
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 80 3 2 82 5 minecraft:dirt
# Üst katman grass (tam yüzey)
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 82 0 2 82 2 minecraft:grass_block
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 3 82 0 5 82 2 minecraft:grass_block
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 82 3 2 82 5 minecraft:grass_block
# Ağaç: manuel küçük meşe (sandık henüz yokken koşul true)
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 82 5 minecraft:grass_block
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 83 5 minecraft:oak_log
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 84 5 minecraft:oak_log
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 85 5 minecraft:oak_log
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 86 4 2 86 6 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 87 4 2 87 6 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 88 5 minecraft:oak_leaves
# Aydınlatma
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 83 0 minecraft:torch
# Spawn noktası
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setworldspawn 1 83 1
# Sandık (en sona alındı ki önceki koşulları kesmesin)
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 5 83 1 minecraft:chest[facing=west]
# Sandık içerik (lava bucket + ice)
execute in ornek:skyblock run item replace block 5 83 1 container.0 with minecraft:lava_bucket
execute in ornek:skyblock run item replace block 5 83 1 container.1 with minecraft:ice
# Oyuncuları adaya taşı
execute in ornek:skyblock run tp @a 1 83 1
forceload remove 0 0
scoreboard players set $done island_init 1
