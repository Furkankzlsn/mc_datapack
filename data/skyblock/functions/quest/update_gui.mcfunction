# Quest GUI'yi Güncelle

# Mevcut sidebar'ı temizle
scoreboard players reset * sb_quest

# Görev 1: Oak Log toplama
execute as @a[scores={sb_quest=1}] run function skyblock:quest/display_quest_1

# Görev 2: Cobblestone generator
execute as @a[scores={sb_quest=2}] run function skyblock:quest/display_quest_2

# Görev 3: Sugar Cane toplama
execute as @a[scores={sb_quest=3}] run function skyblock:quest/display_quest_3

# Görev 4: Desert Island
execute as @a[scores={sb_quest=4}] run function skyblock:quest/display_quest_4
