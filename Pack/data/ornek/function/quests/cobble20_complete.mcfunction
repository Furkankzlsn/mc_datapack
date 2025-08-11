# 20 Cobblestone görevi tamamlandı

tellraw @s {"text":"Görev Tamamlandı: 20 Cobblestone!","color":"green"}
scoreboard players set @s quest_stage 2
advancement grant @s only ornek:deneme/second_quest
# Görev satırını kaldır
scoreboard players reset 20_Cobble_Kir quest_board
