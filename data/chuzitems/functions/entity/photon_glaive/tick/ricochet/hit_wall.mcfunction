#> chuzitems:entity/photon_glaive/tick/ricochet/hit_wall
#
# 
#
# @within function chuzitems:entity/photon_glaive/tick/ricochet/

# これで向きを変える
    tp @s ~ ~ ~ ~ ~

# 演出
    playsound chuzume:blaster3 neutral @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.hurt neutral @a ~ ~ ~ 1 2
    particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10

# すぐさま移動しないようにタグ付与
    tag @s add ChuzItems.Reflected