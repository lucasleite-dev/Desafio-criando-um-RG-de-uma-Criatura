
-- Enable UTF-8
os.execute("chcp 65001")

-- Clear windows terminal
os.execute("cls")

-- Creatures
local creatures = {}

creatures[#creatures + 1] = {
    -- Infos
    name = "CREEPER",
    description = "A stealthy monster with an explosive temper.",
    emoji = "💥",
    sound = "Tssss",
    favoriteTime = "Night",
    item = "Gunpowder",
    -- Attributes
    attackAttribute = 10,
    defenseAttribute = 1,
    healthAttribute = 5,
    speedAttribute = 7,
    inteligenceAttribute = 2,
    -- History
    history = "Due to its distinctive appearance and unique and destructive method of attack, the creeper has become one of the most iconic mobs of Minecraft, being featured in promotional material and merchandise."
}

creatures[#creatures + 1] = {
    -- Infos
    name = "Ender Dragon",
    description = "The ender dragon is a giant flying hostile boss mob found when first entering the End.",
    emoji = "🐉",
    sound = "Raw",
    favoriteTime = "Night",
    item = "Dragon Egg",
    -- Attributes
    attackAttribute = 10,
    defenseAttribute = 10,
    healthAttribute = 10,
    speedAttribute = 10,
    inteligenceAttribute = 5,
    -- History
    history = "It guards access to the end gateways that provide entry to the outer end islands in addition to the exit portal that allows return to the Overworld as well as access to the end credits of Minecraft. Because of this, it is known by most Minecraft fans as the 'final boss' of the game. Its attacks involve charging at the player and its unique dragon acid attacks."
}

-- Function that receives an attribute and returns a progress bar in string / text
local function getProgressBar(attribute)
    local result = ""

    for i = 1, 10 do
        if i <= attribute then
            result = result .. "⬜"
        else
            result = result .. "⬛"
        end
    end

    return result
end

-- Function that receives creature data and print in terminal
local function printCreature(creature, index)
    -- Creature Card
    print(string.format(
        [[                                  %d.
====================================================================
|
| Name           -> %s
| Description    -> %s
|
| Sound          -> %s
| Item           -> %s
| Favorite Emoji -> %s
| Favorite Time  -> %s
|
| Attributes")
|    Attack      -> %s
|    Defense     -> %s
|    Health      -> %s
|    Speed       -> %s
|    Inteligence -> %s
|
| History
|    %s
====================================================================]],
        index,
        creature.name,
        creature.description,
        creature.sound,
        creature.item,
        creature.emoji,
        creature.favoriteTime,
        getProgressBar(creature.attackAttribute),
        getProgressBar(creature.defenseAttribute),
        getProgressBar(creature.healthAttribute),
        getProgressBar(creature.speedAttribute),
        getProgressBar(creature.inteligenceAttribute),
        creature.history
    ))
end

print([[⠀⠀⡰⠉⠉⣷⡄⣀⣎⠉⢹⡎⠉⢉⡞⠉⠉⣧⡎⠉⠉⡞⠉⠉⠉⠉⠉⣿⠉⠉⠉⠉⠉⢹⡏⠋⠉⠉⠉⠙⡏⠉⣉⠉⣉⠉⢿⠉⠉⠉⢉⠉⢱⡏⠉⠉⠉⢉⠉⡄
⠀⢀⠃⠀⠀⠘⠛⠁⠀⠀⣼⠀⠀⣸⠃⠀⠀⠘⠃⠀⢰⡇⠀⠀⠛⠛⠛⣿⠀⠀⢸⣿⣿⣿⡇⠀⠈⠃⠀⣠⣿⠀⠉⣶⣍⠀⢸⡆⠀⠘⠛⠛⠛⣿⣿⡆⠀⠈⡟⠁
⠀⡜⣀⢀⣶⣀⣰⠆⠀⢀⡏⠀⠀⣿⠀⠀⣸⣄⠤⠄⢸⠃⠀⢰⣶⣶⣶⣿⠀⠀⢸⣉⣉⣉⡇⡀⠀⣶⠀⠀⢹⠀⠀⢀⡀⢀⠀⣇⠀⠀⢶⣶⣶⢾⣿⣿⡀⠀⢱⠀
⢰⠀⠀⢸⣿⣦⠈⠀⠀⢼⠁⠀⢰⡇⠀⠀⣿⣿⠀⠀⢼⠀⡄⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⢸⡇⠂⠀⣿⠀⠀⢸⡆⠀⢘⡧⠀⠀⣿⠀⠀⢸⠛⠃⠘⣿⣿⡇⠀⠀⡆
⠀⠑⢤⣀⣙⡿⠉⠱⣄⣠⣷⣄⣀⣹⣄⣀⣘⡏⢆⣀⣘⣧⣀⣀⣀⣀⣀⣿⣀⣀⣀⣀⣀⣸⣇⣀⣰⣏⣀⣠⣿⣀⣀⣾⣁⣀⣴⣋⣀⡠⠃⠀⠀⠀⢿⣋⣀⡤⠋⠀
]])

for index, creature in pairs(creatures) do
    printCreature(creature, index)
end