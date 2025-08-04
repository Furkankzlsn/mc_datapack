# Boss Çağırma Sistemi

execute store result score @s sb_items run clear @s gold_ingot 0

execute if score @s sb_items matches 64.. run clear @s gold_ingot 64
execute if score @s sb_items matches 64.. run tellraw @s {"text":"⚔️ ISLAND BOSS ÇAĞIRILIYOR...","color":"red","bold":true}
execute if score @s sb_items matches 64.. run function skyblock:boss/summon_island_guardian

execute unless score @s sb_items matches 64.. run tellraw @s {"text":"❌ Yetersiz Gold! (64 gerekli)","color":"red"}
