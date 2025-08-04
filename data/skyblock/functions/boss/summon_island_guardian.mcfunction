# Island Guardian Boss

# Boss spawn
summon wither_skeleton ~ ~5 ~ {CustomName:'{"text":"Island Guardian","color":"dark_red","bold":true}',Health:100f,Attributes:[{Name:"generic.max_health",Base:100.0d},{Name:"generic.attack_damage",Base:12.0d},{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.follow_range",Base:32.0d}],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:fire_aspect",lvl:2s}]}},{}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:netherite_helmet",Count:1b}],Tags:["island_boss"]}

# Boss duyuru
tellraw @a {"text":"💀 ISLAND GUARDIAN UYANDIRILDI! 💀","color":"dark_red","bold":true}
tellraw @a {"text":"Tüm oyuncular tehlikede!","color":"red"}

# Epic efektler
playsound entity.wither.spawn master @a ~ ~ ~ 2 0.5
particle explosion ~ ~5 ~ 2 2 2 1 10
effect give @a[distance=..50] blindness 3 1

# Boss tag
tag @e[type=wither_skeleton,tag=island_boss,limit=1] add boss_active
