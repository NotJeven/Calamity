# Called from: calamity:arena/handler

#>--------------------------------------------------------------------------------------------------
#> Purpose: Erase the whole level and marker entities
#>--------------------------------------------------------------------------------------------------

# clear the area that the structures load
fill 142 0 87 174 47 99 minecraft:air
fill 142 0 100 174 47 119 minecraft:air
fill 142 0 120 174 47 139 minecraft:air
fill 142 0 140 174 47 159 minecraft:air
fill 142 0 160 174 47 179 minecraft:air
fill 142 0 180 174 47 199 minecraft:air

fill 130 0 87 98 47 99 minecraft:air
fill 130 0 100 98 47 119 minecraft:air
fill 130 0 120 98 47 139 minecraft:air
fill 130 0 140 98 47 159 minecraft:air
fill 130 0 160 98 47 179 minecraft:air
fill 130 0 180 98 47 199 minecraft:air

fill 141 0 181 131 47 199 minecraft:air

# Data layers
fill 145 255 191 167 255 87 minecraft:air
fill 127 255 191 105 255 87 minecraft:air
fill 145 255 182 127 255 191 minecraft:air

# lobby
fill 133 56 68 139 58 71 minecraft:air

# Kill all entities to ensure no drops or other things are left over.
function calamity:load/kill_entities