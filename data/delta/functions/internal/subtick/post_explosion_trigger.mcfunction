#> delta:internal/subtick/post_explosion_trigger
#   Runs commands as the player immediately after the creeper explosion has been processed
#
# Callers:
#   > delta:post_explosion_trigger (advancement)

advancement revoke @s only delta:post_explosion_trigger

#Revert player to previous gamemode
gamemode adventure @s[scores={delta.internal.gamemode=0}]
gamemode creative @s[scores={delta.internal.gamemode=1}]
gamemode spectator @s[scores={delta.internal.gamemode=2}]
gamemode survival @s[scores={delta.internal.gamemode=3}]

#Revert mobGriefing gamerule if necessary
execute if score $temp delta.internal.mobgriefing matches 1 run gamerule mobGriefing true
#Revert difficulty if necessary
execute if score $diff delta.internal.gamemode matches 0 run difficulty peaceful

# 装備を戻す
    execute in overworld run loot replace entity @s weapon.mainhand mine 100001 -64 100000 minecraft:debug_stick


#Teleport self down
tp @s ~ ~-1000 ~

# kill entity
    tp @e[type=bat,tag=delta.bat,sort=nearest] ~ ~-300 ~
    kill @e[type=bat,tag=delta.bat,sort=nearest]