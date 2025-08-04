# Kılıçlı Skeleton Özel Davranışlar

# Eğer elinde kılıç yoksa ver
execute unless entity @s[nbt={HandItems:[{id:"minecraft:iron_sword"},{}]}] run item replace entity @s weapon.mainhand with iron_sword

# Özel AI - oyuncuyu takip et
execute if entity @p[distance=..8] run data merge entity @s {Attributes:[{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.attack_damage",Base:6.0d},{Name:"generic.max_health",Base:25.0d}]}

# Parçacık efekti
particle smoke ~ ~1 ~ 0.2 0.5 0.2 0.02 1

# Özel saldırı efekti
execute if entity @s[nbt={HurtTime:9s}] run playsound entity.skeleton.hurt master @a ~ ~ ~ 1 0.8
