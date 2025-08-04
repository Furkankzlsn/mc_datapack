# Görev 4 Tamamlandı: Crafting Challenge

# Clear items
clear @s crafting_table 1
clear @s furnace 1  
clear @s chest 3

# Büyük ödül
give @s diamond 5
give @s emerald 3
give @s golden_apple 2
give @s ender_pearl 8

# Desert Island erişimi
function skyblock:islands/create_desert

# İlerleme
scoreboard players set @s sb_quest 5
scoreboard players set @s sb_progress 0
scoreboard players set @s sb_island 3

# Mesaj
tellraw @s {"text":"=== BÜYÜK BAŞARI ===","color":"gold","bold":true}
tellraw @s {"text":"✓ Crafting Challenge tamamlandı!","color":"green"}
tellraw @s {"text":"🏜️ Desert Island açıldı!","color":"yellow"}
tellraw @s {"text":"Ödül: 5 Diamond, 3 Emerald, 2 Golden Apple","color":"yellow"}
tellraw @s {"text":"🎯 Yeni Hedef: Desert Island'ı keşfedin!","color":"aqua"}

# Epic sound
playsound entity.enderdragon.growl master @s ~ ~ ~ 1 1.2
playsound entity.player.levelup master @s ~ ~ ~ 1 1.5

# Achievement
advancement grant @s only skyblock:master_crafter
