# Called from: moesh:reset

#---------------------------------------------------------------------------------------------------
# Purpose: Set the player to the lobby state
#---------------------------------------------------------------------------------------------------

# Players who are in adventure or survival must be on players team
team join players @s

# Players often spawn in the ground when they come out of spectator mode. Let's teleport to the
# spawn location instead, and set their spawnpoint.
teleport @s 136 50 75 0 0
spawnpoint @s 136 50 75