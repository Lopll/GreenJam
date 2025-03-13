local M = {}

ITEM_CATEGORIE = {KEY = hash("key"), TREASURE = hash("treasure"), POWER_UP = hash("power_up"), RESOURCE = hash("resource")}
PLAYER_RESOURCE = {KANJI_POINTS = hash("kanji_points"), INK = hash("ink"), BACKPACK = hash("backpack")}

local ITEMS = {}

-- initializes items (need to do init when change localization)
function M.init()
    ITEMS[hash("inkPack_50")] =
    {
        name = "inkPack_50",
        categorie = ITEM_CATEGORIE.RESOURCE,
        resource = PLAYER_RESOURCE.INK,
        delta = 50,
        label = TEXTS.inkPack50,
        info = TEXTS.inkPackDescription_50,
        icon = "inkPack_50_Icon",
        price = 850
    }
    ITEMS[hash("inkPack_100")] =
    {
        name = "inkPack_100",
        categorie = ITEM_CATEGORIE.RESOURCE,
        resource = PLAYER_RESOURCE.INK,
        delta = 100,
        label = TEXTS.inkPack100,
        info = TEXTS.inkPackDescription_100,
        icon = "inkPack_100_Icon",
        price = 1700
    }
    ITEMS[hash("inkPack_150")] =
    {
        name = "inkPack_150",
        categorie = ITEM_CATEGORIE.RESOURCE,
        resource = PLAYER_RESOURCE.INK,
        delta = 150,
        label = TEXTS.inkPack150,
        info = TEXTS.inkPackDescription_150,
        icon = "inkPack_150_Icon",
        price = 2550
    }
    ITEMS[hash("tetra")] =
    {
        name = "tetra",
        categorie = ITEM_CATEGORIE.TREASURE,
        label = TEXTS.tetraLabel,
        info = TEXTS.tetraDescription,
        icon = "tetra_icon",
        price = 1200
    }
    ITEMS[hash("key")] =
    {
        name = "key",
        categorie = ITEM_CATEGORIE.KEY,
        label = TEXTS.keyLabel,
        info = TEXTS.keyDescription,
        icon = "key_icon",
        price = 0
    }
    ITEMS[hash("gear")] =
    {
        name = "gear",
        categorie = ITEM_CATEGORIE.TREASURE,
        label = TEXTS.gearLabel,
        info = TEXTS.gearDescription,
        icon = "gear_icon",
        price = 500
    }
    ITEMS[hash("backpackUpgrade_1")] =
    {
        name = "backpackUpgrade_1",
        categorie = ITEM_CATEGORIE.POWER_UP,
        resource = PLAYER_RESOURCE.BACKPACK,
        delta = 3,
        label = TEXTS.backpackUpgradeLabel_1,
        info = TEXTS.backpackUpgradeDescription_1,
        icon = "backpackUpgrade_1_icon",
        price = 2500
    }
end

function M.getItem(itemName)
    return ITEMS[itemName]
end

return M