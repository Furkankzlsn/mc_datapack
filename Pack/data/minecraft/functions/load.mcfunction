# Skyblock Datapack Load Function

tellraw @a {"text":"=== SKYBLOCK DATAPACK LOADED ===","color":"gold","bold":true}
tellraw @a {"text":"Test için: /function skyblock:test","color":"yellow"}
tellraw @a {"text":"Yardım için: /function skyblock:help","color":"green"}

# Scoreboard'ları oluştur
scoreboard objectives add sb_quest dummy "Skyblock Quests"
scoreboard objectives add sb_progress dummy "Quest Progress" 
scoreboard objectives add sb_island dummy "Island Level"
scoreboard objectives add sb_kills totalKillCount "Monster Kills"
scoreboard objectives add sb_items dummy "Item Collection"
