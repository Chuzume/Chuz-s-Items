
# ゲームルールをちょっといじる
    gamerule maxEntityCramming 0

# スライムを召喚
    scoreboard players remove @s ChuzItems.Recursive 1
    summon magma_cube ^ ^-0.5 ^ {NoAI:1b,Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:emptyy",Tags:["ChuzItems.Slime","Chuz_NonVanillaMob"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999,ShowParticles:0b}]}
    execute if score @s ChuzItems.Recursive matches 0.. run function chuz_items:item/gunblade/summon_recursive

# ちょっとした後戻す
    schedule function chuz_items:item/gunblade/melee/return_gamerule 2t