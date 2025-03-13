local M = {}

PROJECT_NAME = "BKG"
SLOT_DIR = PROJECT_NAME.."/Slots"
SETTINGS_FILE_NAME = "Settings"
MAX_SAVE_SLOTS = 3
local slot = 0

-- increment slot number
function M.nextSlot()
    -- count from 1
    slot = 1 + (slot % MAX_SAVE_SLOTS)
    print("New slot: "..tostring(slot))
end

function M.setSlot(slotNumber)
    slot = slotNumber
end

-- updates slots info on the load screen of the menu
function M.updateSlots()
    if sys.exists(sys.get_save_file(PROJECT_NAME,"Slots")) then
        for i = 1, MAX_SAVE_SLOTS do
            local name = PLAYER_SAVE_NAME .. "_" .. tostring(i)
            local filename = sys.get_save_file(SLOT_DIR, name)
    
            msg.post(MENU, "SetSlotDate", {slot = i, date = sys.load(filename).date})
        end
    end
end

-- save data table of object to its file
function M.saveData(saveObject, data, globalData)
    if not globalData then
        local name = saveObject .. "_" .. tostring(slot)
        local filename = sys.get_save_file(SLOT_DIR, name)
        
        local currentDate =  os.date("*t")
        msg.post(MENU, "SetSlotDate", {slot = slot, date = currentDate})
        
        sys.save(filename, {data = data, date = currentDate})
    else
        local name = saveObject
        local filename = sys.get_save_file(PROJECT_NAME, name)  
        sys.save(filename, {data = data, date = currentDate})
    end
end

-- compares all d of current date and dates from all dates, returns number of slot with newest data
function M.getLastUsedSlot()
    local dates = {}
    -- get all dates
    for i = 1, MAX_SAVE_SLOTS do
        local name = PLAYER_SAVE_NAME .. "_" .. tostring(i)
        local filename = sys.get_save_file(SLOT_DIR, name)        
        table.insert(dates, i, sys.load(filename).date)
    end
    -- find newest date
    local result = nil
    local resultNumber = 1
    local currentDate = os.date("*t")
    local resultDiff = 0
    for i = 1, MAX_SAVE_SLOTS do
        if dates[i] ~= nil then
            local arrTimeDiff = math.abs(os.difftime(os.time(dates[i]), os.time(currentDate)))
            if resultDiff == 0 or arrTimeDiff < resultDiff then
                resultNumber = i
                resultDiff = arrTimeDiff
            end
        end
    end
    return resultNumber
end

-- deletes all saves except settings
function M.clear()
    -- reset world
    msg.post(SCENE_MANAGER, "SetWorld", {worldNum = 1})
    
    -- get path to saves folder
    local pathToSettings = sys.get_save_file(PROJECT_NAME, SETTINGS_FILE_NAME)
    local pathToSettingsLen = string.len(pathToSettings)
    
    local settingsLen = string.len(SETTINGS_FILE_NAME)
    
    local pathToSaves = string.sub(pathToSettings, 0, pathToSettingsLen-settingsLen)
    -- delete slot data
    print("Delete result:")
    print(os.execute('del /q /f "'..pathToSaves..'Slots"'))
    
    -- clear menu slots
    for i = 1, MAX_SAVE_SLOTS do
        msg.post(MENU, "SetSlotDate", {slot = i, date = "-"})
    end
    
end

-- load data table for object from its file, return 0 if nothing to loada
function M.loadData(loadObject)
    if slot == 0 then
        slot = M.getLastUsedSlot()
    end

    local name = loadObject.. "_" .. tostring(slot)
    local filename = sys.get_save_file(SLOT_DIR, name)
    print("Load slot " .. tostring(slot))
    return sys.load(filename).data or 0
end

-- load global data table for object from its file, return 0 if nothing to load. Global data - data without slot saving
function M.loadGlobalData(loadObject)
    local name = loadObject
    local filename = sys.get_save_file(PROJECT_NAME, name)
    return sys.load(filename).data or 0
end

return M