# Skyblock Datapack Ana Başlatma Dosyası

# Scoreboard'ları oluştur
scoreboard objectives add sb_quest dummy "Skyblock Quests"
scoreboard objectives add sb_progress dummy "Quest Progress" 
scoreboard objectives add sb_island dummy "Island Level"
scoreboard objectives add sb_kills totalKillCount "Monster Kills"
scoreboard objectives add sb_items dummy "Item Collection"

tellraw @a {"text":"Skyblock sistemi başlatıldı!","color":"green"}
tellraw @a {"text":"Test: /function skyblock:test","color":"yellow"}
