
-- Enable UTF-8
os.execute("chcp 65001")

-- Clear windows terminal
os.execute("cls")

-- Creature
local monsterName = "CREEPER"
local description = "A stealthy monster with an explosive temper."
local emoji = "💥"
local sound = "Tssss"
local favoriteTime = "Night"
local item = "Gunpowder"
-- Attributes
local attackAttribute = 10
local defenseAttribute = 1
local healthAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

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

-- Cartão
print("==================================================================")
print("| ")
print("| Name: " .. monsterName)
print("| Description: " .. description)
print("| ")
print("| Sound: " .. sound)
print("| Item: " .. item)
print("| Favorite Emoji: " .. emoji)
print("| Favorite Time: " .. favoriteTime)
print("| ")
print("| Attributes")
print("|    Attack:       " .. getProgressBar(attackAttribute))
print("|    Defense:       " .. getProgressBar(defenseAttribute))
print("|    Health:         " .. getProgressBar(healthAttribute))
print("|    Speed:   " .. getProgressBar(speedAttribute))
print("|    Inteligence: " .. getProgressBar(inteligenceAttribute))
print("| ")
print("==================================================================")

