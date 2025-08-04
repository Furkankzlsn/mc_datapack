# Görev 2 Display

scoreboard players set §6§l=== sb_quest 100
scoreboard players set §e§lAKTİF_GÖREV: sb_quest 90
scoreboard players set §7Cobblestone sb_quest 85
scoreboard players set §7Generator sb_quest 80
execute store result score @s sb_progress run clear @s cobblestone 0
execute if score @s sb_progress matches 0..31 run scoreboard players operation §a□_Progress sb_quest = @s sb_progress
execute if score @s sb_progress matches 0..31 run scoreboard players set §a/32_Cobble sb_quest 70
execute if score @s sb_progress matches 32.. run scoreboard players set §a✓_32/32_DONE! sb_quest 70
scoreboard players set ________________ sb_quest 50
scoreboard players set §6§lÖDÜL: sb_quest 40
scoreboard players set §74_Iron sb_quest 35
scoreboard players set §78_Coal sb_quest 30
scoreboard players set §716_Seeds sb_quest 25
scoreboard players set ================ sb_quest 10
