# Her tick: ilk giriş mesajı, starter kit, rehber kitap
execute as @a unless score @s join_flag matches 1.. run tellraw @s {"text":"Dünyaya hoşgeldiniz!","color":"green"}
execute as @a unless score @s join_flag matches 1.. run scoreboard players set @s join_flag 1
execute as @a unless score @s kit_flag matches 1.. run function ornek:kit/give
execute as @a unless score @s kit_flag matches 1.. run scoreboard players set @s kit_flag 1
execute as @a unless score @s book_flag matches 1.. run function ornek:join/book
execute as @a unless score @s book_flag matches 1.. run scoreboard players set @s book_flag 1

# Eğer quest_stage yoksa 0 yap (ilk görev otomatik başlasın)
execute as @a unless score @s quest_stage matches 0.. run scoreboard players set @s quest_stage 0

# Görev 1: 10 Odun (quest_stage=0)
execute as @a[scores={quest_stage=0}] run scoreboard players operation 10_Odun_Kir quest_board = @s oaklog
execute as @a[scores={quest_stage=0,oaklog=10..}] run function ornek:quests/wood10_complete

# Görev 2: 20 Cobble (quest_stage=1) -> stone + cobble birleşik, tek satır 20_Cobble_Kir
# Eski cobble_prog satırını (varsa) temizle
scoreboard players reset cobble_prog quest_board
# Değeri her tick son işlenen stage=1 oyuncusundan alır
execute as @a[scores={quest_stage=1}] run scoreboard players operation 20_Cobble_Kir quest_board = @s cobble
execute as @a[scores={quest_stage=1}] run scoreboard players operation 20_Cobble_Kir quest_board += @s stone_stat
# Tamamlanma kontrolü
execute as @a[scores={quest_stage=1}] if score 20_Cobble_Kir quest_board matches 20.. run function ornek:quests/cobble20_complete
