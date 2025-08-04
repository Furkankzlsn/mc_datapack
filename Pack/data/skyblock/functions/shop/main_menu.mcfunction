# Shop Sistemi - Temel Ticaret

tellraw @s {"text":"=== SKYBLOCK SHOP ===","color":"gold","bold":true}
tellraw @s {"text":"","color":"white"}

# Temel Materyaller
tellraw @s [{"text":"[SATIN AL] ","color":"green","bold":true},{"text":"4 Cobblestone → 1 Iron","color":"gray","clickEvent":{"action":"run_command","value":"/function skyblock:shop/buy_iron"},"hoverEvent":{"action":"show_text","contents":"4 Cobblestone karşılığında 1 Iron alın"}}]

tellraw @s [{"text":"[SATIN AL] ","color":"green","bold":true},{"text":"8 Cobblestone → 1 Coal","color":"gray","clickEvent":{"action":"run_command","value":"/function skyblock:shop/buy_coal"},"hoverEvent":{"action":"show_text","contents":"8 Cobblestone karşılığında 1 Coal alın"}}]

tellraw @s [{"text":"[SATIN AL] ","color":"green","bold":true},{"text":"16 Cobblestone → 1 Diamond","color":"gray","clickEvent":{"action":"run_command","value":"/function skyblock:shop/buy_diamond"},"hoverEvent":{"action":"show_text","contents":"16 Cobblestone karşılığında 1 Diamond alın"}}]

tellraw @s {"text":"","color":"white"}

# Özel Itemler
tellraw @s [{"text":"[ÖZEL] ","color":"red","bold":true},{"text":"32 Iron → Creeper Spawner","color":"dark_green","clickEvent":{"action":"run_command","value":"/function skyblock:shop/buy_creeper_spawner"},"hoverEvent":{"action":"show_text","contents":"Özel Creeper Spawner alın"}}]

tellraw @s [{"text":"[ÖZEL] ","color":"red","bold":true},{"text":"64 Gold → Boss Çağırma","color":"yellow","clickEvent":{"action":"run_command","value":"/function skyblock:shop/summon_boss"},"hoverEvent":{"action":"show_text","contents":"Island Boss'ını çağırın"}}]

tellraw @s {"text":"","color":"white"}
tellraw @s {"text":"💰 Mevcut kaynaklar kontrol ediliyor...","color":"yellow"}
