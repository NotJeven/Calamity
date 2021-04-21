# Called from: #calamity:load

#---------------------------------------------------------------------------------------------------
# Purpose: Erase the whole level and marker entities
#---------------------------------------------------------------------------------------------------
# Lobby
fill 133 49 65 139 60 71 air
# Logo
fill 117 65 75 157 75 79 air
# data
fill 97 254 87 175 255 185 air
# arena
fill 135 0 87 97 15 89 air
fill 135 16 87 97 31 89 air
fill 135 32 87 97 47 89 air
fill 135 48 87 97 60 89 air

fill 135 0 90 97 15 137 air
fill 135 16 90 97 31 137 air
fill 135 32 90 97 47 137 air
fill 135 48 90 97 60 137 air

fill 135 0 138 97 15 185 air
fill 135 16 138 97 31 185 air
fill 135 32 138 97 47 185 air
fill 135 48 138 97 60 185 air


fill 137 0 87 175 15 89 air
fill 137 16 87 175 31 89 air
fill 137 32 87 175 47 89 air
fill 137 48 87 175 60 89 air

fill 137 0 90 175 15 137 air
fill 137 16 90 175 31 137 air
fill 137 32 90 175 47 137 air
fill 137 48 90 175 60 137 air

fill 137 0 138 175 15 185 air
fill 137 16 138 175 31 185 air
fill 137 32 138 175 47 185 air
fill 137 48 138 175 60 185 air

# Kill all entities to ensure no drops or other things are left over.
function calamity:load/kill_entities