scoreboard objectives add join_flag dummy "İlk Giriş"
scoreboard objectives add kit_flag dummy "Başlangıç Kiti"
scoreboard objectives add book_flag dummy "Rehber Kitap"
scoreboard objectives add quest_stage dummy "Görev Aşaması"
# Düzeltildi: iki nokta yerine kategori:namespace.id formatı
scoreboard objectives add oaklog minecraft.mined:minecraft.oak_log "Odun"
scoreboard objectives add quest_board dummy "Görev"

# Bossbar kaldır (varsa)
bossbar remove ornek:quest

# Sidebar aktif
scoreboard objectives setdisplay sidebar quest_board

# Temizlik: olası eski satırlar
scoreboard players reset SKYBLOCK quest_board
scoreboard players reset ====GOREV==== quest_board
scoreboard players reset ODN quest_board
scoreboard players reset ODN_SLASH10 quest_board
scoreboard players reset Odun quest_board
scoreboard players reset "10_Odun_Kir" quest_board
scoreboard players reset 10_Odun_Kir quest_board
scoreboard players reset 10OdunKir quest_board