# Başlangıç yükleme bekleyici
scoreboard objectives add island_init dummy
# Oyuncu yoksa tekrar dene
execute unless entity @a[limit=1] run schedule function ornek:boot 2t
# Oyuncu varsa ve ada kurulmadıysa kur
execute if entity @a[limit=1] unless score $done island_init matches 1 run function ornek:worldgen/place_island
