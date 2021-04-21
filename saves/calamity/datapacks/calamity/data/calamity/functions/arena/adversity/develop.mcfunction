# Called from: nowhere

#---------------------------------------------------------------------------------------------------
# Purpose: Sets the arena to development mode.
#---------------------------------------------------------------------------------------------------
# We're actively develping Calamity, and sometimes that means changing the physical level. The level
#   is stored in structure files which are in this datapack. This means we're able to place
#   structure blocks to both place

# Place structure blocks which reference Calamity's structures

# Place structure blocks
    # arena
    setblock 136 1 87 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena8", mode:"LOAD", posX:1, posY:47, posZ:0, sizeX:39, sizeY:13, sizeZ:3, showboundingbox:1b}
    setblock 136 0 87 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena7", mode:"LOAD", posX:1, posY:0, posZ:0, sizeX:39, sizeY:48, sizeZ:3, showboundingbox:1b}
    setblock 136 1 90 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena6", mode:"LOAD", posX:1, posY:47, posZ:0, sizeX:39, sizeY:13, sizeZ:48, showboundingbox:1b}
    setblock 136 0 90 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena5", mode:"LOAD", posX:1, posY:0, posZ:0, sizeX:39, sizeY:48, sizeZ:48, showboundingbox:1b}
    setblock 136 1 138 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena4", mode:"LOAD", posX:1, posY:47, posZ:0, sizeX:39, sizeY:13, sizeZ:48, showboundingbox:1b}
    setblock 136 0 138 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena3", mode:"LOAD", posX:1, posY:0, posZ:0, sizeX:39, sizeY:48, sizeZ:48, showboundingbox:1b}

    setblock 136 1 88 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena8", mode:"LOAD", posX:-1, posY:47, posZ:-1, sizeX:39, sizeY:13, sizeZ:3, mirror:"LEFT_RIGHT", rotation:"CLOCKWISE_180", showboundingbox:1b}
    setblock 136 0 88 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena7", mode:"LOAD", posX:-1, posY:0, posZ:-1, sizeX:39, sizeY:48, sizeZ:3, mirror:"LEFT_RIGHT", rotation:"CLOCKWISE_180", showboundingbox:1b}
    setblock 136 1 91 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena6", mode:"LOAD", posX:-1, posY:47, posZ:-1, sizeX:39, sizeY:13, sizeZ:48, mirror:"LEFT_RIGHT", rotation:"CLOCKWISE_180", showboundingbox:1b}
    setblock 136 0 91 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena5", mode:"LOAD", posX:-1, posY:0, posZ:-1, sizeX:39, sizeY:48, sizeZ:48, mirror:"LEFT_RIGHT", rotation:"CLOCKWISE_180", showboundingbox:1b}
    setblock 136 1 139 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena4", mode:"LOAD", posX:-1, posY:47, posZ:-1, sizeX:39, sizeY:13, sizeZ:48, mirror:"LEFT_RIGHT", rotation:"CLOCKWISE_180", showboundingbox:1b}
    setblock 136 0 139 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena3", mode:"LOAD", posX:-1, posY:0, posZ:-1, sizeX:39, sizeY:48, sizeZ:48, mirror:"LEFT_RIGHT", rotation:"CLOCKWISE_180", showboundingbox:1b}

    setblock 136 1 141 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena2", mode:"LOAD", posX:0, posY:47, posZ:32, sizeX:1, sizeY:13, sizeZ:13, showboundingbox:1b}
    setblock 136 0 141 minecraft:structure_block[mode=load]{name:"calamity:adversity/arena1", mode:"LOAD", posX:0, posY:0, posZ:32, sizeX:1, sizeY:48, sizeZ:13, showboundingbox:1b}

    # lobby
    setblock 133 48 65 minecraft:structure_block[mode=load]{name:"calamity:adversity/lobby", mode:"LOAD", posX:0, posY:1, posZ:0, sizeX:7, sizeY:13, sizeZ:7, showboundingbox:1b}

    # sign
    setblock 117 64 75 minecraft:structure_block[mode=load]{name:"calamity:adversity/sign", mode:"LOAD", posX:0, posY:1, posZ:0, sizeX:41, sizeY:11, sizeZ:5, showboundingbox:1b}

    setblock 136 251 87 minecraft:structure_block[mode=load]{name:"calamity:adversity/data4", mode:"LOAD", posX:1, posY:0, posZ:0, sizeX:39, sizeY:5, sizeZ:3, showboundingbox:1b}
    setblock 136 251 90 minecraft:structure_block[mode=load]{name:"calamity:adversity/data3", mode:"LOAD", posX:1, posY:0, posZ:0, sizeX:39, sizeY:5, sizeZ:48, showboundingbox:1b}
    setblock 136 251 138 minecraft:structure_block[mode=load]{name:"calamity:adversity/data2", mode:"LOAD", posX:1, posY:0, posZ:0, sizeX:39, sizeY:5, sizeZ:48, showboundingbox:1b}

    setblock 136 251 88 minecraft:structure_block[mode=load]{name:"calamity:adversity/data4", mode:"LOAD", posX:-1, posY:0, posZ:-1, sizeX:39, sizeY:5, sizeZ:3, mirror:"LEFT_RIGHT", rotation:"CLOCKWISE_180", showboundingbox:1b}
    setblock 136 251 91 minecraft:structure_block[mode=load]{name:"calamity:adversity/data3", mode:"LOAD", posX:-1, posY:0, posZ:-1, sizeX:39, sizeY:5, sizeZ:48, mirror:"LEFT_RIGHT", rotation:"CLOCKWISE_180", showboundingbox:1b}
    setblock 136 251 139 minecraft:structure_block[mode=load]{name:"calamity:adversity/data2", mode:"LOAD", posX:-1, posY:0, posZ:-1, sizeX:39, sizeY:5, sizeZ:48, mirror:"LEFT_RIGHT", rotation:"CLOCKWISE_180", showboundingbox:1b}

    setblock 136 251 141 minecraft:structure_block[mode=load]{name:"calamity:adversity/data1", mode:"LOAD", posX:0, posY:0, posZ:32, sizeX:1, sizeY:5, sizeZ:13, showboundingbox:1b}