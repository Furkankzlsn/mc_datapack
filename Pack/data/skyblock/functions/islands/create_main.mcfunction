# Ana Skyblock Adası Oluşturucu

# Oyuncuyu teleport et
tp @s 0 100 0

# Küçük ada platformu
fill -2 99 -2 2 99 2 grass_block
fill -1 99 -1 1 99 1 dirt

# Ağaç 
setblock 0 100 0 oak_log
setblock 0 101 0 oak_log
setblock 0 102 0 oak_log
setblock 0 103 0 oak_leaves
fill -1 103 -1 1 103 1 oak_leaves
fill -1 102 -1 1 102 1 oak_leaves replace air
setblock 0 102 0 oak_log

# Sandık (temel itemler)
setblock 1 100 1 chest[facing=west]{Items:[{Slot:0b,id:"minecraft:lava_bucket",Count:1b},{Slot:1b,id:"minecraft:ice",Count:2b},{Slot:2b,id:"minecraft:bread",Count:3b},{Slot:3b,id:"minecraft:apple",Count:5b}]}

# Spawn point ayarla
spawnpoint @s 0 100 0

# Başlangıç mesajı
tellraw @s {"text":"=== SKYBLOCK BAŞLADI! ===","color":"gold","bold":true}
tellraw @s {"text":"","color":"white"}
tellraw @s {"text":"🌳 Ağacı kırın ve odun toplayın","color":"green"}
tellraw @s {"text":"📦 Sandıktan lava alın","color":"yellow"}  
tellraw @s {"text":"⛏️ Cobblestone generator yapın","color":"gray"}
tellraw @s {"text":"📋 Sol tarafta görevlerinizi takip edin","color":"aqua"}
tellraw @s {"text":"","color":"white"}
tellraw @s {"text":"İyi şanslar!","color":"light_purple"}

# Achievement
advancement grant @s only skyblock:welcome
