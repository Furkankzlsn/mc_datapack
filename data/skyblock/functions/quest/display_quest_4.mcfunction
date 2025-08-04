# Görev 4 Display - Crafting Challenge

scoreboard players set §6§l=== sb_quest 100
scoreboard players set §e§lCRAFTING sb_quest 90
scoreboard players set §7Challenge sb_quest 85
execute store result score @s sb_progress run clear @s crafting_table 0
execute if score @s sb_progress matches 0 run scoreboard players set §c□_Crafting_Table sb_quest 75
execute if score @s sb_progress matches 1.. run scoreboard players set §a✓_Crafting_Table sb_quest 75
execute store result score @s sb_items run clear @s furnace 0  
execute if score @s sb_items matches 0 run scoreboard players set §c□_Furnace sb_quest 70
execute if score @s sb_items matches 1.. run scoreboard players set §a✓_Furnace sb_quest 70
execute store result score @s sb_items run clear @s chest 0
execute if score @s sb_items matches 0..2 run scoreboard players set §c□_3_Chests sb_quest 65
execute if score @s sb_items matches 3.. run scoreboard players set §a✓_3_Chests sb_quest 65
scoreboard players set ________________ sb_quest 50
scoreboard players set §6§lÖDÜL: sb_quest 40
scoreboard players set §7Desert_Island sb_quest 35
scoreboard players set §7Access sb_quest 30
scoreboard players set ================ sb_quest 10
