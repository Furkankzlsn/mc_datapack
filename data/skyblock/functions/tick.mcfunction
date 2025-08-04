# Ana Tick Sistemi - Her tick çalışır

# Yeni oyuncular için otomatik setup
execute as @a[tag=!skyblock_setup] run function skyblock:setup/first_time_setup

# Quest ilerlemesini kontrol et
function skyblock:quest/check_progress

# Spawner sistemlerini çalıştır
function skyblock:spawners/spawner_tick

# Zombie Miner kontrolü
execute as @e[type=zombie,name="Maden Zombie"] at @s run function skyblock:spawners/zombie_miner_tick

# Boss sistemi
execute if entity @e[type=wither_skeleton,tag=boss_active] run function skyblock:boss/boss_tick

# Özel loot kontrolü
execute as @a at @s if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..5] run function skyblock:spawners/check_miner_drops

# GUI'yi güncelle (her 20 tick'te bir)
execute if score #timer sb_progress matches 20.. run function skyblock:quest/update_gui
execute if score #timer sb_progress matches 20.. run scoreboard players set #timer sb_progress 0
scoreboard players add #timer sb_progress 1
