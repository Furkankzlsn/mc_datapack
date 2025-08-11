# Her tick: ilk giriş mesajı, starter kit, rehber kitap
execute as @a unless score @s join_flag matches 1.. run tellraw @s {"text":"Dünyaya hoşgeldiniz!","color":"green"}
execute as @a unless score @s join_flag matches 1.. run scoreboard players set @s join_flag 1
execute as @a unless score @s kit_flag matches 1.. run function ornek:kit/give
execute as @a unless score @s kit_flag matches 1.. run scoreboard players set @s kit_flag 1
execute as @a unless score @s book_flag matches 1.. run tellraw @s {"text":"[DEBUG] Kitap veriliyor","color":"yellow"}
execute as @a unless score @s book_flag matches 1.. run function ornek:join/book
execute as @a unless score @s book_flag matches 1.. run scoreboard players set @s book_flag 1
