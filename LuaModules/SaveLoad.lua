local M = {}

PROJECT_NAME = "GreenGame"
SLOT_DIR = PROJECT_NAME.."/Slots"
SETTINGS_FILE_NAME = "Settings"
MAX_SAVE_SLOTS = 3
local slot = 0

-- increment slot number
function M.nextSlot()
end

function M.setSlot(slotNumber)
end

-- updates slots info on the load screen of the menu
function M.updateSlots()
end

-- save data table of object to its file
function M.saveData(saveObject, data, globalData)
end

-- compares all d of current date and dates from all dates, returns number of slot with newest data
function M.getLastUsedSlot()
end

-- deletes all saves except settings
function M.clear()
    
end

-- load data table for object from its file, return 0 if nothing to loada
function M.loadData(loadObject)
end

-- load global data table for object from its file, return 0 if nothing to load. Global data - data without slot saving
function M.loadGlobalData(loadObject)
end

return M