#> chuzitems:get_data/on_ground
#
# OnGroundを取る
#
# @within function chuzitems:**

# EntityStorage呼び出し
    function oh_my_dat:please
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Chuz.Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.OnGround.Time set from storage global Time
    execute if score $NotLatestData Chuz.Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.OnGround.Data set from entity @s OnGround
# outputのstorageに移す
    data modify storage api: OnGround set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.OnGround.Data