# L şekilli Skyblock adası (tek seferlik)
# Temiz alan
fill 0 79 0 6 85 6 air
# Referans bedrock (kontrol noktası)
setblock 0 79 0 bedrock

# Merkez küp (0..2 x, 0..2 z, taban 80, yükseklik 3 blok)
fill 0 80 0 2 82 2 minecraft:dirt
setblock 1 82 1 minecraft:grass_block
# X kolu (3..5 x, 0..2 z)
fill 3 80 0 5 82 2 minecraft:dirt
# Z kolu (0..2 x, 3..5 z)
fill 0 80 3 2 82 5 minecraft:dirt

# Sandık (merkez üst yüzey) + içerik (loot replace ile)
setblock 1 82 1 minecraft:chest[facing=north]
loot replace block 1 82 1 container.0 with minecraft:lava_bucket
loot replace block 1 82 1 container.1 with minecraft:water_bucket
loot replace block 1 82 1 container.2 with minecraft:oak_sapling 1
loot replace block 1 82 1 container.3 with minecraft:bone_meal 2
loot replace block 1 82 1 container.4 with minecraft:melon_slice 8

# Fidan
setblock 5 83 1 minecraft:oak_sapling
# Aydınlatma
setblock 1 83 0 minecraft:torch

# Dünya spawnı ve (ilk tick sonrası dışarıdan) teleport hedefi
setworldspawn 1 83 1
