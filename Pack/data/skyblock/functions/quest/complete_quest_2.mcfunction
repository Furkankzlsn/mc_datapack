# Görev 2 Tamamlandı: 32 Cobblestone

# Clear items  
clear @s cobblestone 32

# Ödül ver
give @s iron_ingot 4
give @s coal 8
give @s wheat_seeds 16

# İlerleme
scoreboard players set @s sb_quest 3
scoreboard players set @s sb_progress 0

# Mesaj
tellraw @s {"text":"=== GÖREV TAMAMLANDI ===","color":"gold","bold":true}
tellraw @s {"text":"✓ Cobblestone Generator oluşturdunuz!","color":"green"}
tellraw @s {"text":"Ödül: 4 Iron, 8 Coal, 16 Seeds","color":"yellow"}
tellraw @s {"text":"Yeni Görev: 64 Sugar Cane toplayın!","color":"aqua"}

# Ses efekti
playsound entity.player.levelup master @s ~ ~ ~ 1 1.2

# Achievement
advancement grant @s only skyblock:cobble_gen
