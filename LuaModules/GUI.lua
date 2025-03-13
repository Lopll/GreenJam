

local GUI_Module = {}

function GUI_Module.init(self)
	self.baseNode = gui.get_node("BaseNode")
end

function GUI_Module.on_message(self, message_id, message, sender)
	if message_id == hash("PickNode") then
		local pickResult = GUI_Module.pick(message, self.baseNode)

		msg.post(sender, message_id, {pickNode = (gui.get_alpha(self.baseNode)~=0 and pickResult or false)})
		--print((gui.get_alpha(self.baseNode)~=0 and pickResult or false))

	elseif message_id == hash("ToggleAlpha") then -- must change alpha to also hide children of baseNode
		gui.set_alpha(self.baseNode, gui.get_alpha(self.baseNode)==1 and 0 or 1)
	elseif message_id == hash("SetAlpha") then
		gui.set_alpha(self.baseNode, message.alpha)
	end
end

function GUI_Module.pick(message, baseNode)
	local pickResult
	if message.pickOperand ~= nil then
		local correction = 0.99
		pickResult = gui.pick_node(gui.get_node(message.pickOperand), message.position.x * correction, message.position.y * correction)
	else
		pickResult = gui.pick_node(baseNode, message.position.x, message.position.y)
	end
	return pickResult
end


return GUI_Module