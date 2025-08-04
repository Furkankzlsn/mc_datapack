# Quest İlerlemesi Kontrol Et

# Görev 1: 16 Oak Log topla
execute as @a[scores={sb_quest=1}] store result score @s sb_progress run clear @s oak_log 0
execute as @a[scores={sb_quest=1,sb_progress=16..}] run function skyblock:quest/complete_quest_1

# Görev 2: Cobblestone generator yap (32 cobblestone)
execute as @a[scores={sb_quest=2}] store result score @s sb_progress run clear @s cobblestone 0
execute as @a[scores={sb_quest=2,sb_progress=32..}] run function skyblock:quest/complete_quest_2

# Görev 3: 64 Sugar Cane topla
execute as @a[scores={sb_quest=3}] store result score @s sb_progress run clear @s sugar_cane 0
execute as @a[scores={sb_quest=3,sb_progress=64..}] run function skyblock:quest/complete_quest_3

# Görev 4: Crafting Challenge (crafting table + furnace + 3 chest)
execute as @a[scores={sb_quest=4}] store result score @s sb_progress run clear @s crafting_table 0
execute as @a[scores={sb_quest=4}] store result score @s sb_items run clear @s furnace 0
execute as @a[scores={sb_quest=4}] store result score @s sb_kills run clear @s chest 0
execute as @a[scores={sb_quest=4,sb_progress=1..,sb_items=1..,sb_kills=3..}] run function skyblock:quest/complete_quest_4

# GUI'yi güncelle
function skyblock:quest/update_gui
