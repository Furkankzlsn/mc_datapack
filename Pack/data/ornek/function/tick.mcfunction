# Her tick: ilk giriş mesajı ve welcome advancement
advancement grant @a only ornek:root
execute as @a unless score @s join_flag matches 1.. run advancement grant @s only ornek:welcome
execute as @a unless score @s join_flag matches 1.. run tellraw @s {"text":"Dünyaya hoşgeldiniz!","color":"green"}
execute as @a unless score @s join_flag matches 1.. run scoreboard players set @s join_flag 1
