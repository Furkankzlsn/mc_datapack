# 🏝️ Skyblock Datapack

Gelişmiş quest sistemi, özel spawner'lar ve ada progresyonu içeren kapsamlı Minecraft Skyblock datapack'i.

## ✨ Özellikler

### 🎯 Quest Sistemi
- **Sol sidebar**: Aktif görevlerinizi takip edin
- **Progresyon tabanlı**: Her görev yeni özellikler açar
- **Ödül sistemi**: Görev tamamladıkça özel ödüller kazanın
- **Real-time tracking**: İlerlemeniz anlık güncellenir

### 🏗️ Özel Spawner Sistemi
- **Kılıçlı Skeleton**: Özel AI ve saldırı gücü
- **Özel Loot**: %30 büyülü toprak, %20 kömür, %10 demir, %5 altın
- **Parçacık Efektleri**: Görsel geri bildirimler
- **Balanslanmış Drop Rates**: İlerlemeyi destekleyecek şekilde ayarlandı

### 🌴 Ada Sistemi  
- **Ana Ada**: Klasik skyblock başlangıcı
- **Desert Island**: Görev 3'ü tamamlayınca açılır
- **Future Islands**: Dungeon, piramit ve özel yapılar (geliştiriliyor)

## 🎮 Görevler

### Görev 1: İlk Adımlar
- **Hedef**: 16 Oak Log toplayın
- **Ödül**: 8 Apple, 4 Bread, 1 Lava Bucket
- **Açıklama**: Ağacı kırarak başlayın

### Görev 2: Kaynak Üretimi  
- **Hedef**: 32 Cobblestone toplayın (generator yapın)
- **Ödül**: 4 Iron, 8 Coal, 16 Seeds
- **Açıklama**: Lava + Su = Cobblestone

### Görev 3: Tarım Sistemi
- **Hedef**: 64 Sugar Cane toplayın
- **Ödül**: 2 Diamond, 1 Golden Apple, 4 Ender Pearl + **Özel Skeleton Spawner**
- **Açıklama**: Bu görev Desert Island'ı açar

## Dosya Yapısı

```
mc_datapack/
├── pack.mcmeta                 # Datapack tanım dosyası
├── data/
│   ├── minecraft/
│   │   ├── functions/
│   │   │   └── load.mcfunction # Datapack yüklendiğinde çalışır
│   │   ├── advancements/
│   │   ├── recipes/
│   │   └── loot_tables/
│   └── custom/
│       ├── functions/
│       │   └── welcome.mcfunction # Hoş geldin fonksiyonu
│       └── advancements/
│           └── first_load.json    # İlk yükleme başarımı
└── README.md
```

## Kurulum

1. Bu klasörü Minecraft'ın `datapacks` klasörüne kopyalayın:
   - Windows: `%AppData%\.minecraft\saves\[Dünya Adı]\datapacks\`
   - macOS: `~/Library/Application Support/minecraft/saves/[Dünya Adı]/datapacks/`
   - Linux: `~/.minecraft/saves/[Dünya Adı]/datapacks/`

2. Oyunda `/reload` komutunu çalıştırın

3. Datapack'in yüklendiğini kontrol etmek için `/datapack list` komutunu kullanın

## Kullanım

### Temel Komutlar

- `/function custom:welcome` - Hoş geldin mesajı ve özel etkiler
- `/reload` - Datapack'i yeniden yükle

### Geliştirme

Yeni özellikler eklemek için:

1. `data/custom/functions/` klasörüne yeni `.mcfunction` dosyaları ekleyin
2. `data/custom/advancements/` klasörüne yeni başarım dosyaları ekleyin
3. Değişiklikleri test etmek için oyunda `/reload` komutunu çalıştırın

## Minecraft Sürüm Desteği

Bu datapack şu anda **Minecraft 1.20.4+** için optimize edilmiştir.
Farklı sürümler için `pack.mcmeta` dosyasındaki `pack_format` değerini güncelleyin:

- 1.20.2-1.20.4: `pack_format: 18`
- 1.20.5-1.20.6: `pack_format: 41` 
- 1.21+: `pack_format: 48`

## Geliştirme Ortamı

Bu proje VS Code ile geliştirilmiştir ve aşağıdaki özellikler mevcuttur:

- Syntax highlighting için uygun dosya uzantıları
- GitHub Copilot desteği
- Minecraft komut referansları

## Katkıda Bulunma

1. Bu repository'yi fork edin
2. Özellik dalınızı oluşturun (`git checkout -b feature/AmazingFeature`)
3. Değişikliklerinizi commit edin (`git commit -m 'Add some AmazingFeature'`)
4. Dalınızı push edin (`git push origin feature/AmazingFeature`)
5. Pull Request oluşturun

## Lisans

Bu proje MIT lisansı altında lisanslanmıştır.
