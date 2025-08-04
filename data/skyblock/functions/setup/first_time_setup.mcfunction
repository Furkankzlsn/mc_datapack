# İlk Kez Giren Oyuncu İçin Kurulum

# Teleport to void area
tp @s 0 100 0

# Clear default items
clear @s

# Gamemode ayarla
gamemode survival @s

# Ana adayı oluştur
function skyblock:islands/create_main

# Başlangıç mesajları
title @s title {"text":"SKYBLOCK","color":"gold","bold":true}
title @s subtitle {"text":"Hayatta kalma maceranız başlıyor!","color":"yellow"}

tellraw @s {"text":"","color":"white"}
tellraw @s {"text":"=== SKYBLOCK DÜNYASINA HOŞ GELDİNİZ ===","color":"gold","bold":true}
tellraw @s {"text":"","color":"white"}
tellraw @s {"text":"🌍 Bu dünya tamamen void (boşluk)","color":"gray"}
tellraw @s {"text":"🏝️ Tek kaynağınız bu küçük ada","color":"green"}
tellraw @s {"text":"📋 Sol tarafta görevlerinizi takip edin","color":"aqua"}
tellraw @s {"text":"💡 /function skyblock:help - Yardım için","color":"yellow"}
tellraw @s {"text":"","color":"white"}
tellraw @s {"text":"İyi şanslar!","color":"light_purple","bold":true}

# İlk quest'i başlat
scoreboard players set @s sb_quest 1
function skyblock:quest/gui_setup

# Tag ekle
tag @s add skyblock_setup
