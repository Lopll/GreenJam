local M = {}

-- sets value of the slider and changes button's x position
function M.setValue(slider, v)
    v = v > 0 and math.min(slider.max, v) or math.max(slider.min, v)
    -- set new value to the text node
    local textNode = gui.get_node(slider.name.."Text")
    local relVal = (v-slider.min)/(slider.max-slider.min)
    local textVal = (relVal)*100
    local roundVal = textVal%1 >= 0.5 and math.ceil(textVal) or math.floor(textVal)
    gui.set_text(textNode, roundVal)
    
    -- change button pos
    local size = gui.get_size(slider.barNode)
    local posX = relVal * size.x
    local pos = gui.get_position(slider.buttonNode)
    pos.x = posX
    gui.set_position(slider.buttonNode, pos)
    -- change value
    slider.value = v
    slider.args.value = slider.value 
    slider.func(slider.args)
end

-- creates and returns new state table of the slider
function M.new(nodeName, minValue, maxValue, defValue, buttonFunction, funcArgs, parentNode)
    local slider = 
    {
        name = nodeName,
        min = minValue,
        max = maxValue,
        func = buttonFunction,
        args = funcArgs,
        parentNode = parentNode, -- node that is like a parent to the button. If parent is invisible
                                -- button won't work
        werePressed = false,
        defValue = defValue
    }
    -- get nodes
    slider.barNode = gui.get_node(slider.name)
    slider.buttonNode = gui.get_node(slider.name.."Button")
    
    M.setValue(slider, defValue)
    
    return slider
end

-- on_input for each slider
function M.on_input(self, action_id, action, slider)

    local parent = slider.parentNode ~= nil and slider.parentNode or gui.get_parent(slider.buttonNode)
    local pickResult = gui.pick_node(slider.buttonNode, action.x, action.y)
    
    if gui.get_alpha(parent) == 1 then
        -- hover
        if pickResult and gui.get_scale(slider.buttonNode) == vmath.vector3(1, 1, 1) then -- wasn't hovered ?
            slider.defColor = gui.get_color(slider.buttonNode)
            gui.set_color(slider.buttonNode, vmath.vector4(1, 1, 1, 1))
            gui.set_scale(slider.buttonNode, vmath.vector3(1.2, 1.2, 1.2))
        elseif slider.defColor ~= nil and not slider.werePressed and not pickResult then
            -- undo hover
            gui.set_color(slider.buttonNode, slider.defColor)
            gui.set_scale(slider.buttonNode, vmath.vector3(1, 1, 1))
        end
        
        -- LMB actions
        if action_id == hash("Touch") then
            if action.pressed and pickResult then
                slider.werePressed = true
            elseif action.repeated and slider.werePressed then
                -- get button coord
                local pos = gui.get_position(slider.buttonNode)
                -- get coordinates correction (x coord of the button's parent and x coord of the base node)
                local nodeCoordCorrection = gui.get_position(gui.get_parent(slider.buttonNode)).x + 
                    gui.get_position(gui.get_node("BaseNode")).x
                -- next button position.x
                pos.x = action.x - nodeCoordCorrection
                
                local size = gui.get_size(slider.barNode)
                if pos.x >= 0 and pos.x <= size.x then -- is buton next position in the bar's boundaries?
                    gui.set_position(slider.buttonNode, pos)
                    
                    -- calc and set new value
                    local val = (pos.x/size.x * (slider.max - slider.min)) + slider.min
                    slider.value = val
                    
                    -- set text value
                    local textNode = gui.get_node(slider.name.."Text")
                    local textVal = pos.x/size.x * 100
                    local roundVal = textVal%1 >= 0.5 and math.ceil(textVal) or math.floor(textVal)
                    gui.set_text(textNode, roundVal)
                end
                
            elseif action.released and slider.werePressed then
                slider.werePressed = false
                
                -- call button function
                slider.args.value = slider.value 
                slider.func(slider.args)
            end
        end
    end
end

return M