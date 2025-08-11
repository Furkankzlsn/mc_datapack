# Odun toplama görevi tamamlandı
# Bir kez çalışmalı; quest_stage kontrolü tick tarafından yapıldı

tellraw @s {"text":"Görev Tamamlandı: 10 Odun!","color":"green"}
scoreboard players set @s quest_stage 1
advancement grant @s only ornek:deneme/first_quest
