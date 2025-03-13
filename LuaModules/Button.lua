local M = {}

local HOVER_SCALE = vmath.vector3(1.1, 1.1, 1.1) -- on hover button will be scaled by that value
local BUTTON_FUNC_BLOCK_TIME = 0.2 -- after click button will be disabled for this time
local buttonInProgress = false -- preventing missclicks

function M.new(buttonNode, inputZoneNode, defaultColor, buttonFunc, funcArgs, hoverSound, clickSound, 
    parentNode)
local button =
{
    buttonNode = buttonNode, -- button node from gui
    inputZone = inputZoneNode, -- node that needed to be acted like actual button
    defaultColor = defaultColor, -- start button color when no hover applied
    buttonFunc = buttonFunc, -- button function 
    funcArgs = funcArgs, -- arguments for button function
    hoverSound = hoverSound, -- sound that plays on hover
    clickSound = clickSound, -- sound that plays on click
    wasClicked = false, -- value to disable button actions for some time after click 
    parentNode = parentNode -- node that is like a parent to the button. If parent is invisible
                            -- button won't work
}
return button
end

function M.unhover(button)
    if gui.get_scale(button.buttonNode) == HOVER_SCALE then -- was button already unhovered?
        -- over hover
        gui.set_scale(button.buttonNode, vmath.vector3(1, 1, 1))
        gui.set_color(button.buttonNode, button.defaultColor)
    end
end

function M.on_input(self, action_id, action, button)
    local parent = button.parentNode ~= nil and button.parentNode or gui.get_parent(button.buttonNode)
    
    if defos.is_mouse_in_view() and gui.get_alpha(parent) == 1 and gui.get_visible(button.buttonNode) then -- is cursor inside visible button?
        if (button.inputZone == nil and gui.pick_node(button.buttonNode, action.x, action.y) ) 
            or (button.inputZone ~= nil and gui.pick_node(button.inputZone, action.x, action.y)) then -- is cursor inside the input zone?
            if not button.wasClicked or action.released then -- was button clicked? if yes, it is blocked for some time 
                -- hover sound
                if button.hoverSound ~= nil 
                    and gui.get_scale(button.buttonNode) ~= HOVER_SCALE then -- is hover sound set and wasn't played?
                    -- play hover sound
                    msg.post(SCENE_MANAGER, "PlaySound", {sound = button.hoverSound})
                end
                
                -- visual hover
                gui.set_scale(button.buttonNode, HOVER_SCALE)
                gui.set_color(button.buttonNode, vmath.vector4(1, 1, 1, 1))
                
                if action_id == hash("Touch") and action.pressed and not buttonInProgress then -- was left mouse pressed?
                    -- click
                    buttonInProgress = true
                    button.wasClicked = true
                    button.buttonFunc(button.funcArgs)
                    
                    -- over hover while click
                    gui.set_scale(button.buttonNode, vmath.vector3(1, 1, 1))
                    gui.set_color(button.buttonNode, button.defaultColor)
                    
                    -- disable button for some time
                    timer.delay(BUTTON_FUNC_BLOCK_TIME, false, 
                    function() 
                        button.wasClicked = false 
                        buttonInProgress = false 
                    end)
                    
                    if button.clickSound ~= nil then-- is click sound set?
                        -- play click sound
                        msg.post(SCENE_MANAGER, "PlaySound", {sound = button.clickSound})
                    end
                end
            end
            
        else -- to over hover when cursor is outside the input zone 
            M.unhover(button)
        end
    else -- to over hover when cursor is outside the button
            M.unhover(button)
    end
end

return M