local BasicButton_Module = {}

local GUI_M = require("LuaModules.GUI")

-- path to button hover sound
local BUTTON_HOVER_SOUND = "/Sounds/HUD/Button/ButtonHover.ogg"
-- path to button click sound
local BUTTON_CLICK_SOUND = "/Sounds/HUD/Button/ButtonClick.ogg"

BUTTON_IN_ACTION = false
INACTIVE_BUTTON_COLOR = vmath.vector4(153/255, 153/255, 153/255, 1)

function BasicButton_Module.init(self)
	msg.post(".", "acquire_input_focus")
end

function BasicButton_Module.press(buttonFunction, args)
        buttonFunction(args)
end

function BasicButton_Module.hoverOver(button, defaultColor, defaultScale)
    gui.set_color(button, defaultColor)
    gui.set_scale(button, defaultScale)
    -- print("Set scale to " .. tostring(gui.get_scale(button)) .. " for " .. tostring(button))
end

function BasicButton_Module.on_input(self, action_id, action, button, buttonFunction, args, defaultColor, defaultScale, pickNode)
    if not BUTTON_IN_ACTION and gui.get_alpha(gui.get_parent(button)) == 1 
     and (pickNode == nil or gui.pick_node(pickNode, action.x, action.y)) and gui.pick_node(button, action.x, action.y) then
        -- CLICK
        if action.pressed and  action_id == hash("Touch") then
            BUTTON_IN_ACTION = true
            timer.delay(0.1, false, 
            function() BUTTON_IN_ACTION = false end)
            buttonFunction(args)
            
            -- play click sound
            msg.post(PLAYER_URL, "PlaySound", {sound = BUTTON_CLICK_SOUND})
            
        end
        
        -- HOVER
        if gui.get_color(button) ~= vmath.vector4(1, 1, 1, 1) then
            gui.set_color(button, vmath.vector4(1, 1, 1, 1))
            gui.set_scale(button, defaultScale + defaultScale * 0.07)
            -- play hover sound
            msg.post(PLAYER_URL, "PlaySound", {sound = BUTTON_HOVER_SOUND})
            --print("Set scale to " .. tostring(gui.get_scale(button)) .. " for " .. tostring(button))
        end
        -- HOVER OVER
    elseif (gui.get_alpha(gui.get_parent(button)) ~= 1 or not gui.pick_node(button, action.x, action.y))  then
        BasicButton_Module.hoverOver(button, defaultColor, defaultScale)
    end
    --print("Scale for " .. tostring(button) .. " = " .. gui.get_scale(button))
end	

function BasicButton_Module.final(self)
	msg.post(".", "release_input_focus")
end

return BasicButton_Module