# Görev 1 Tamamlandı: 16 Oak Log

# Clear items
clear @s oak_log 16

# Ödül ver
give @s apple 8
give @s bread 4
give @s lava_bucket 1

# İlerleme
scoreboard players set @s sb_quest 2
scoreboard players set @s sb_progress 0

# Mesaj
tellraw @s {"text":"=== GÖREV TAMAMLANDI ===","color":"gold","bold":true}
tellraw @s {"text":"✓ 16 Oak Log topladınız!","color":"green"}
tellraw @s {"text":"Ödül: 8 Apple, 4 Bread, 1 Lava Bucket","color":"yellow"}
tellraw @s {"text":"Yeni Görev: Cobblestone Generator yapın!","color":"aqua"}

# Ses efekti
playsound entity.player.levelup master @s ~ ~ ~ 1 1

# Achievement
advancement grant @s only skyblock:first_wood
