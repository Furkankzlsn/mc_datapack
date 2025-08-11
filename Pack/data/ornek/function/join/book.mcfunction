# İlk giriş rehber kitabı verme

# 1.21+ written book için item component kullanımı
# Not: Eski NBT (title:"...",author:"...",pages:["..."]) bazı sürümlerde çalışmayabilir.
# Yeni biçim: written_book_content component'u
# İçteki title/author/pageler text component (JSON) stringleri SNBT olarak giriliyor.

give @s minecraft:written_book[written_book_content={title:'{"text":"Skyblock Rehberi"}',author:'{"text":"Sunucu"}',pages:['{"text":"Hoş geldin!\\n\\nBu paket görev tabanlı bir Skyblock deneyimi sunar.\\n\\nİlk Adımlar:\\n1) Adanı koru.\\n2) Ağaç büyüt.\\n3) Cobblestone üret.\\n\\nGörev Sistemi:\\nAşamalar ilerledikçe yeni görevler açılır."}','{"text":"Temel Komutlar (gelecek):\\n/is create\\n/is home\\n/quest info\\n\\nİlk Hedef:\\n5 odun -> Aşama 1\\n\\nİpuçları:\\nLav+su jeneratör kur.\\nFidanı kaybetme.\\nİyi oyun!"}']}]
