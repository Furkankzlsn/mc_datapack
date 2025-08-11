# Odun toplama görevi tamamlandı
# Bir kez çalışmalı; quest_stage kontrolü tick tarafından yapıldı

tellraw @s {"text":"Görev Tamamlandı: 10 Odun!","color":"green"}
scoreboard players set @s quest_stage 1
advancement grant @s only ornek:deneme/first_quest
# Eski görev satırını kaldır
scoreboard players reset 10_Odun_Kir quest_board
# Yeni görevi duyur
tellraw @s {"text":"Yeni Görev: 20 Cobblestone Kır","color":"yellow"}
