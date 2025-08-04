# Iron Satın Alma

execute store result score @s sb_items run clear @s cobblestone 0

execute if score @s sb_items matches 4.. run clear @s cobblestone 4
execute if score @s sb_items matches 4.. run give @s iron_ingot 1
execute if score @s sb_items matches 4.. run tellraw @s {"text":"✓ 1 Iron satın alındı!","color":"green"}
execute if score @s sb_items matches 4.. run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1

execute unless score @s sb_items matches 4.. run tellraw @s {"text":"❌ Yetersiz Cobblestone! (4 gerekli)","color":"red"}
