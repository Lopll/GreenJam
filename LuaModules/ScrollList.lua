local Button = require "LuaModules.Button"

local M = {}

-- distance between elements of the list
local DEFAULT_ELEMENT_DISTANCE = 7
local SCROLL_SPEED = 25

-- adds new element to the list (element is a GUI node)
function M.addElement(list, element)
    -- place new element below last element
    local size = gui.get_size(element)
    local pos = gui.get_position(element)
    local len = #list.elements  
    
    pos.y = gui.get_position(list.elements[len]).y - list.elementDistance - size.y
    gui.set_position(element, pos)
    
    -- update visual length
    list.visualLen = list.visualLen + size.y + list.elementDistance
    list.maxParentY = list.maxParentY + size.y + list.elementDistance
    
    table.insert(list.elements, element)
end

-- creates new instance
function M.new(parent, scroll, elementDistance, elements)
    
    local list = 
    {
        parent = parent,
        scroll = scroll,
        elements = elements == nil and {} or elements,
        maskSize = gui.get_size(gui.get_parent(parent)),
        scrollSize = gui.get_size(scroll),
        elementDistance = elementDistance == nil and DEFAULT_ELEMENT_DISTANCE or elementDistance,
        -- length of the whole list in pixels
        visualLen = 0,
        -- max y coord for the parent (whole list)
        maxParentY = 0,
        -- max y coord for the scroll node
        maxScrollY = 0,
        -- min y coord for the scroll node
        maxScrollY = 0
    } 
    -- calc viasul length if any elements were set
    if elements ~= nil then
        for key, value in ipairs(elements) do
            list.visualLen = list.visualLen + gui.get_size(value).y + list.elementDistance
        end
        list.maxParentY = list.visualLen - list.maskSize.y
    end
    
    list.parentPos = gui.get_position(parent)
    list.scrollPos = gui.get_position(scroll)
    list.maxScrollY = list.scrollPos.y
    M.updateScrollSize(list)
    return list
end

-- update y size of the scroll 
function M.updateScrollSize(list)
    local rel = list.visualLen/list.maskSize.y
    if rel > 1 then
        local size = list.scrollSize
        size.y = size.y / rel
        gui.set_size(list.scroll, size)
        -- update data in list params
        list.scrollSize = size
        -- movement speed of the scroll node
        list.scrollDelta = SCROLL_SPEED * (list.scrollSize.y/list.maskSize.y)
        -- scroll y coord is always <0, that's why its min y coord should be also <0
        list.minScrollY = -(list.maskSize.y + list.maxScrollY - list.scrollSize.y)
    end
end

-- moves object from pos to pos+delta on y axis; min and max - movement boundaries
function moveObj(obj, pos, delta, min, max)
    local newPos = pos.y + delta
    if newPos >= min and newPos <= max then
        pos.y = newPos
        gui.set_position(obj, pos)
    end
end

function M.on_input(self, action_id, action, list)
    if gui.pick_node(gui.get_parent(list.parent), action.x, action.y) then -- is the cursor above scroll list?
        if action.value == 1 then
            -- we need a little space between mask edge and its content
            local parentY = list.maxParentY + (list.elementDistance * 2)--gui.get_size(list.elements[#list.elements]).y
            if action_id == hash("WheelDown") and math.abs(parentY) > 0 then
                -- move content
                moveObj(list.parent, list.parentPos, SCROLL_SPEED, 0, parentY)
                -- move scroll
                moveObj(list.scroll, list.scrollPos, -list.scrollDelta, 
                     list.minScrollY, list.maxScrollY)
                 
            elseif action_id == hash("WheelUp") and math.abs(parentY) > 0 then
                -- move content
                moveObj(list.parent, list.parentPos, -SCROLL_SPEED, 0, parentY)
                -- move scroll
                moveObj(list.scroll, list.scrollPos, list.scrollDelta, 
                     list.minScrollY, list.maxScrollY)
            end
        end
    end
end

return M