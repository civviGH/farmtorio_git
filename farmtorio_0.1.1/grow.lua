--[[TODO
	-- verallgemeinern auf alle photovoltaic stufen
	-- photovoltaic pflanzen müssen noch energie abgeben
]]

-- list each plant and its next stage. die if it should die
evolution_dictionary = {
	["photovoltaic-plant-1"] = "photovoltaic-plant-2",
	["photovoltaic-plant-2"] = "die",
	["dummy-plant-1"] = "dummy-plant-2",
	["dummy-plant-2"] = "dummy-plant-3"
}

time_to_grow_dictionary = {
	["dummy-plant-1"] = 5,
	["dummy-plant-2"] = 5,
	["dummy-plant-3"] = 5,
	["photovoltaic-plant-1"] = 5,
	["photovoltaic-plant-2"] = 5,
}

growing_plants = {}
TICKS_PER_SECOND = 60

-- checks if entity is a growing plant. adds it to the growing list if it is
function start_growing(plant, tick_count)
	-- makes sure that only actually growing plants make it into the list
	if evolution_dictionary[plant.name] == nil then	
		do return end
	end
    growing_plants[#growing_plants + 1] = { plant, tick_count }
end

-- checks every 60 ticks if some plants need to grow
script.on_event(defines.events.on_tick, function(event)
    if event.tick % 60 ~= 0 then
        do return end
	end
    for i = #growing_plants, 1, -1 do
		-- plant not valid anymore? remove it, jump to end of loop
		if  not growing_plants[i][1].valid then
			table.remove(growing_plants,i)
			goto continue
		end
		-- plant is valid, check if it grows
		if (event.tick - growing_plants[i][2]) > time_to_grow_dictionary[growing_plants[i][1].name] * TICKS_PER_SECOND then
			-- plant grows
			local plant_to_grow = growing_plants[i][1]			
			local plant_name = plant_to_grow.name
			-- does it die? remove and continue
			if evolution_dictionary[plant_name] == "die" then
				plant_to_grow.die()
				table.remove(growing_plants, i)
				goto continue
			end
			-- else get information
			local plant_position = plant_to_grow.position
			local plant_surface = plant_to_grow.surface
			-- destroy old plant
			plant_to_grow.die()
			-- plant next stage
			local new_plant = plant_surface.create_entity { name = evolution_dictionary[plant_name], position = plant_position, force = "player" }
			-- let it grow (no pun intended)
			start_growing(new_plant, event.tick)			
			table.remove(growing_plants, i)
		end
		-- label for goto since there is no continue keyword
		::continue::
	end
end)
