# Otomatik Skyblock Dünya Kurulumu

# Oyuncuyu void'de spawn yapar ve ana adayı otomatik oluşturur
execute as @a[tag=!skyblock_setup] run function skyblock:setup/first_time_setup
execute as @a[tag=!skyblock_setup] run tag @s add skyblock_setup
