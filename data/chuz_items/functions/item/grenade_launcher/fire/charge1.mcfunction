# 俺が実行者だ
    tag @s add This
    
# 演出
    execute positioned ^ ^-0.2 ^0.5 run playsound chuzume:launcher_shot player @a ~ ~ ~ 3 1.4
    execute positioned ^ ^-0.2 ^0.5 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 1
    execute positioned ^ ^-0.2 ^0.5 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 1.3
    execute positioned ^ ^-0.2 ^0.5 run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 3 1.5

# 弾を召喚
    function chuz_items:item/grenade_launcher/fire/summon

# 弾丸にInit処理
    scoreboard players set @e[type=item,tag=Chuz.Init,distance=..100,limit=1] Chuz.Speed 14
    execute as @e[type=item,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuz_items:entity/grenade/init

# 弾が減る
    execute in overworld run function chuz_items:item/consume_ammo

# もう実行者ではない
    tag @s remove This

# リロードを阻害
    scoreboard players reset @s ChuzItems.Ready
    scoreboard players reset @s ChuzItems.Reload
    scoreboard players reset @s ChuzItems.Charge