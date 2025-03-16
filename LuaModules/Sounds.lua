local M = {}

local soundDir = "/Sounds"

SOUNDS =
{
    -- HUD
    brush = soundDir.."/HUD/Brush.ogg",
    pause = soundDir.."/HUD/Pause.ogg",
    unpause = soundDir.."/HUD/Unpause.ogg",
    ----Button
    buttonHover = soundDir.."/HUD/Button/ButtonHover.ogg",
    buttonClick = soundDir.."/HUD/Button/ButtonClick.ogg",
    ----Inventory
    backpackOn = soundDir.."/HUD/Inventory/BackpackOn.ogg",
    backpackOff = soundDir.."/HUD/Inventory/BackpackOff.ogg",
    diaryNote = soundDir.."/HUD/Inventory/DiaryNote.ogg",
    trade = soundDir.."/HUD/Inventory/Trade.ogg",
    use = soundDir.."/HUD/Inventory/Use.ogg",
    -- Placeables
    save = soundDir.."/Placeables/Save.ogg",
    levelChange = soundDir.."/Placeables/LevelChange.ogg",
    ----Door
    doorClose = soundDir.."/Placeables/Door/DoorClose.ogg",
    doorOpen = soundDir.."/Placeables/Door/DoorOpen.ogg",
    --Characters
    ----Pchel
    pchelVoice = soundDir.."/Characters/Pchel/PchelVoice.ogg",
    
    
    
    -- jam
    btn = soundDir.."/button1.ogg"
    
}

function M.getSoundPath(sound)
    return SOUNDS[sound]
end

return M