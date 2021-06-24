# Called from: calamity:arena/handler

#>--------------------------------------------------------------------------------------------------
#> Purpose: Erase the whole level and marker entities
#>--------------------------------------------------------------------------------------------------

# clear the area that the structures load
fill 142 0 76 174 47 99 minecraft:air
fill 142 0 100 174 47 119 minecraft:air
fill 142 0 120 174 47 139 minecraft:air
fill 142 0 140 174 47 159 minecraft:air
fill 142 0 160 174 47 179 minecraft:air
fill 142 0 180 174 47 199 minecraft:air

fill 130 0 76 98 47 99 minecraft:air
fill 130 0 100 98 47 119 minecraft:air
fill 130 0 120 98 47 139 minecraft:air
fill 130 0 140 98 47 159 minecraft:air
fill 130 0 160 98 47 179 minecraft:air
fill 130 0 180 98 47 199 minecraft:air

fill 141 0 181 131 47 199 minecraft:air

# Data layers
fill 144 255 191 160 255 76 minecraft:air
fill 128 255 191 112 255 76 minecraft:air
fill 144 255 182 128 255 191 minecraft:air

# lobby
fill 133 56 68 139 58 71 minecraft:air

# Kill all entities to ensure no drops or other things are left over.
function calamity:load/kill_entities