scoreboard objectives add join_flag dummy "İlk Giriş"
scoreboard objectives add kit_flag dummy "Başlangıç Kiti"
scoreboard objectives add book_flag dummy "Rehber Kitap"
scoreboard objectives add quest_stage dummy "Görev Aşaması"
# Düzeltildi: iki nokta yerine kategori:namespace.id formatı
scoreboard objectives add oaklog minecraft.mined:minecraft.oak_log "Odun"
scoreboard objectives add quest_board dummy "Görev"

# Sidebar (geçici devre dışı bırakılabilir) - kaldırmak istersen bu satırı sil
# scoreboard objectives setdisplay sidebar quest_board

# Bossbar (görev ilerleme çubuğu) oluştur (varsa hata yoksayılır)
bossbar add ornek:quest "Görev"
bossbar set ornek:quest max 10
bossbar set ornek:quest players @a