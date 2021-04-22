# Called from: #calamity:reset

#>--------------------------------------------------------------------------------------------------
#> Purpose: Set the player to the lobby state
#>--------------------------------------------------------------------------------------------------

execute at @e[type=minecraft:area_effect_cloud,name="LobbySpawnpoint"] run spawnpoint @s ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,name="LobbySpawnpoint"] run teleport @s ~ ~ ~ 0 0
gamemode adventure @s[gamemode=!adventure]
function calamity:player/give_lobby_effects