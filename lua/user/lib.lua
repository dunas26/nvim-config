local M = {}
function M.in_table(table, key)
	for tableKey, _ in pairs(table) do
		if tableKey == key then
			return true
		end
	end
	return false
end
return M;
