# Her tick: ilk giriş mesajı, starter kit, rehber kitap
execute as @a unless score @s join_flag matches 1.. run tellraw @s {"text":"Dünyaya hoşgeldiniz!","color":"green"}
execute as @a unless score @s join_flag matches 1.. run scoreboard players set @s join_flag 1
execute as @a unless score @s kit_flag matches 1.. run function ornek:kit/give
execute as @a unless score @s kit_flag matches 1.. run scoreboard players set @s kit_flag 1
execute as @a unless score @s book_flag matches 1.. run tellraw @s {"text":"[DEBUG] Kitap veriliyor","color":"yellow"}
execute as @a unless score @s book_flag matches 1.. run function ornek:join/book
execute as @a unless score @s book_flag matches 1.. run scoreboard players set @s book_flag 1

# Görev Bossbar güncelle (quest_stage 0 iken görünür, değilse gizle)
execute if entity @a[scores={quest_stage=0}] run bossbar set ornek:quest players @a[scores={quest_stage=0}]
execute if entity @a[scores={quest_stage=0}] run bossbar set ornek:quest visible true
execute unless entity @a[scores={quest_stage=0}] run bossbar set ornek:quest visible false

# Değer güncelle (her oyuncu farklı olabileceği için ilk eşleşen referans; basit model)
execute as @a[scores={quest_stage=0}] run bossbar set ornek:quest value 0
execute as @a[scores={quest_stage=0}] store result bossbar ornek:quest value run scoreboard players get @s oaklog
execute if entity @a[scores={quest_stage=0}] run bossbar set ornek:quest name {"text":"Mevcut Görev: Odun Topla","color":"yellow"}

# Görev tamamlandıysa (10 veya üstü) bir kez stage ilerlet
execute as @a[scores={quest_stage=0,oaklog=10..}] run function ornek:quests/wood10_complete
