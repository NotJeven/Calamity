# Called from: #calamity:register_player, calamity:game_state/trigger_reset_game

#---------------------------------------------------------------------------------------------------
# Purpose: Returns players to their initial state at the start of the map (lobby, not match)
#   This function MUST NOT affect the player's team or position.
#---------------------------------------------------------------------------------------------------

# Tags
tag @s remove Playing
tag @s remove VotedForfeit

# Clear player of their blessings.
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points

scoreboard players set @s kills 0

# Register player in the food scoreboard
effect give @a minecraft:hunger 1 100 true

# Register the player on the health scoreboard
effect give @s minecraft:absorption 3 4 false
# Refill stats
effect give @s minecraft:instant_health 3 10 true
effect give @s minecraft:saturation 5 10 true