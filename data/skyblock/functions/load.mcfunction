# Skyblock Datapack Ana Başlatma Dosyası

# Scoreboard'ları oluştur
scoreboard objectives add sb_quest dummy "Skyblock Quests"
scoreboard objectives add sb_progress dummy "Quest Progress"
scoreboard objectives add sb_island dummy "Island Level"
scoreboard objectives add sb_kills totalKillCount "Monster Kills"
scoreboard objectives add sb_items dummy "Item Collection"

# World gamerule ayarları (Skyblock için optimize)
gamerule doMobSpawning false
gamerule doDaylightCycle true
gamerule doWeatherCycle false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false
gamerule doWardenSpawning false

# Spawn point ayarla
setworldspawn 0 100 0

# Default değerler - ilk kez giren oyuncular için otomatik setup
execute as @a[tag=!skyblock_setup] run function skyblock:setup/first_time_setup

tellraw @a {"text":"=== SKYBLOCK DATAPACK LOADED ===","color":"gold","bold":true}
tellraw @a {"text":"Tam Skyblock deneyimi aktif!","color":"yellow"}
tellraw @a {"text":"Yeni oyuncular otomatik olarak void'e spawn olacak","color":"green"}
