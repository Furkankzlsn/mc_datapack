# Skyblock dünya başlangıç initializer (örnek pakete benzer gecikmeli planlama)
scoreboard objectives add island_init dummy
# Zaten başlatılmış mı?
execute if score $done island_init matches 1 run return 0
# Oyuncu gelene kadar bekle
execute unless entity @a[limit=1] run schedule function ornek:worldgen/init 2t
execute unless entity @a[limit=1] run return 0
# Oyuncu var, ada yerleştirmeyi planla (1 tick gecikme) ve tekrar çalışmayı durdur
schedule function ornek:worldgen/place_island 1t
