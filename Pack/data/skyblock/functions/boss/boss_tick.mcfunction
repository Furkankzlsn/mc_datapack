# Boss AI ve Özel Yetenekler

# Boss sağlık kontrolü
execute as @e[type=wither_skeleton,tag=boss_active] store result score @s sb_progress run data get entity @s Health

# %50 sağlıkta özel saldırı
execute as @e[type=wither_skeleton,tag=boss_active,scores={sb_progress=..50}] at @s run function skyblock:boss/special_attack_1

# %25 sağlıkta son çare
execute as @e[type=wither_skeleton,tag=boss_active,scores={sb_progress=..25}] at @s run function skyblock:boss/special_attack_2

# Boss ölümü kontrolü
execute unless entity @e[type=wither_skeleton,tag=boss_active] if entity @a[tag=boss_fight] run function skyblock:boss/boss_defeated

# Boss arena efektleri
execute as @e[type=wither_skeleton,tag=boss_active] at @s run particle flame ~ ~2 ~ 1 1 1 0.1 5
execute as @e[type=wither_skeleton,tag=boss_active] at @s if predicate skyblock:random_10 run playsound entity.wither.ambient master @a ~ ~ ~ 0.8 0.8
