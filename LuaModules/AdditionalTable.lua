local AdditionalTable_Module = {}

-- deleting elements from GUI and clearing the table
function AdditionalTable_Module.deleteTableElements(table)  
	if table ~= nil then
	   for key, element in ipairs(table) do
	       gui.delete_node(element)
	       element = nil
	   end
	end
end

-- find element in the table and return its key or nil
function AdditionalTable_Module.findElement(table, element) 
	for key, value in pairs(table) do
		if value == element then
			return key
		end
	end
	return nil
end

return AdditionalTable_Module