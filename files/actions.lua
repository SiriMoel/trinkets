dofile_once("mods/trinkets/files/scripts/utils.lua")

local new_actions = {
	
}

local actions_to_insert = {}

local action_ids_in_order = {
	
}

for i,id in ipairs(action_ids_in_order) do
	for ii=1,#new_actions do
		local action = new_actions[ii]
		if action.id == id then
			table.insert(actions_to_insert, action)
		end
	end
end

for i,action in ipairs(actions_to_insert) do
	action.id = "MOLDOS_" .. action.id
	local levels = ""
	local probabilities = ""
	levels = ""
	probabilities = ""
	local multiplier = 1
	for i,level in ipairs(action.spawn_level_table) do
		levels = levels .. tostring(level) .. ","
	end
	action.spawn_level = levels
	for i,chance in ipairs(action.spawn_probability_table) do
		chance = chance * multiplier
		probabilities = probabilities .. tostring(chance) .. ","
	end
	action.spawn_probability = probabilities
	table.insert(actions, action)
end