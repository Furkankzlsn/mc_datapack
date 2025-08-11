# Her tick: ilk giriş mesajı, starter kit, rehber kitap
execute as @a unless score @s join_flag matches 1.. run tellraw @s {"text":"Dünyaya hoşgeldiniz!","color":"green"}
execute as @a unless score @s join_flag matches 1.. run scoreboard players set @s join_flag 1
execute as @a unless score @s kit_flag matches 1.. run function ornek:kit/give
execute as @a unless score @s kit_flag matches 1.. run scoreboard players set @s kit_flag 1
execute as @a unless score @s book_flag matches 1.. run tellraw @s {"text":"[DEBUG] Kitap veriliyor","color":"yellow"}
execute as @a unless score @s book_flag matches 1.. run function ornek:join/book
execute as @a unless score @s book_flag matches 1.. run scoreboard players set @s book_flag 1

# Eğer quest_stage yoksa 0 yap (ilk görev otomatik başlasın)
execute as @a unless score @s quest_stage matches 0.. run scoreboard players set @s quest_stage 0

# Görev satırı oluştur / güncelle: 10_Odun_Kir
execute as @a[scores={quest_stage=0}] run scoreboard players operation 10_Odun_Kir quest_board = @s oaklog

# Görev tamamlandıysa stage ilerlet
execute as @a[scores={quest_stage=0,oaklog=10..}] run function ornek:quests/wood10_complete
