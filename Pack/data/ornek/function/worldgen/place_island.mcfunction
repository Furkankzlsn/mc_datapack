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
# AĞAÇ (doğal şekil) – YENİ (gövde merkez x=2,z=5)
# Eski gövde temizle (x=1 sütunu)
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 83 5 minecraft:air
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 84 5 minecraft:air
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 85 5 minecraft:air
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 86 5 minecraft:air
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 87 5 minecraft:air
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 88 5 minecraft:air
# Yeni gövde (6 blok yüksek) x=2 z=5
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 83 5 minecraft:oak_log
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 84 5 minecraft:oak_log
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 85 5 minecraft:oak_log
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 86 5 minecraft:oak_log
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 87 5 minecraft:oak_log
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 88 5 minecraft:oak_log
# Tepe (y=89) artı + merkez
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 89 5 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 89 5 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 3 89 5 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 89 4 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 89 6 minecraft:oak_leaves
# Tepe artı altı (y=88) + ekstra tek köşe (seçilen 3,88,6)
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 88 5 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 3 88 5 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 88 4 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 88 6 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 3 88 6 minecraft:oak_leaves
# Delikli 5x5 katman (y=87) – köşeler (0,87,4) ve (4,87,4) boş
# Önce tam alanı temizleyip sonra yaprakları diz
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 87 4 4 87 6 minecraft:air
# Satırlar
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 87 5 4 87 5 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 87 4 4 87 4 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 87 6 4 87 6 minecraft:oak_leaves
# Delik bırak
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 0 87 4 minecraft:air
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 4 87 4 minecraft:air
# Tam 5x5 katman (y=86) – gövde merkezde kalır
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 86 4 4 86 6 minecraft:oak_leaves
# AĞAÇ YAPRAK KATMAN DÜZELTME (y=86 ve y=87 tam 5x5, merkez gövde korunur)
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 86 3 4 86 7 minecraft:air
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 87 3 4 87 7 minecraft:air
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 86 3 4 86 7 minecraft:oak_leaves
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run fill 0 87 3 4 87 7 minecraft:oak_leaves
# Merkez odunu tekrar yaz (üzerine yaprak gelmiş olabilir)
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 86 5 minecraft:oak_log
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 2 87 5 minecraft:oak_log
# Aydınlatma
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 1 83 0 minecraft:torch
# Spawn noktası
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setworldspawn 1 83 1
# Sandık (en sona alındı ki önceki koşulları kesmesin)
execute in ornek:skyblock unless block 5 83 1 minecraft:chest run setblock 5 83 1 minecraft:chest[facing=west]
# Sandık içerik (lava bucket + ice)
execute in ornek:skyblock run item replace block 5 83 1 container.0 with minecraft:lava_bucket
execute in ornek:skyblock run item replace block 5 83 1 container.1 with minecraft:ice
# Oyuncu kişisel spawn noktaları ayarla
execute in ornek:skyblock run spawnpoint @a 1 83 1
# Oyuncuları adaya taşı
execute in ornek:skyblock run tp @a 1 83 1
forceload remove 0 0
scoreboard players set $done island_init 1
