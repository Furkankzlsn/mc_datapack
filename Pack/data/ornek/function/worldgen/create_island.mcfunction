# Tek seferlik ada oluşturma (skyblock dimension)
# Zemin kontrol: skyblock boyutunda bedrock yoksa ada kur
execute in ornek:skyblock unless block 0 79 0 minecraft:bedrock run function ornek:worldgen/_make_island
