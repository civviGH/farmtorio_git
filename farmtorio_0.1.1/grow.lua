--[[TODO
-- verallgemeinern auf alle photovoltaic stufen
-- photovoltaic pflanzen müssen noch energie abgeben
 ]]

 -- list each plant and its next stage. die if it should die
evolution_dictionary = {
	["photovoltaic-plant-1"] = "photovoltaic-plant-2",
	--["photovoltaic-plant-2"] = "die",
}

time_to_grow_dictionary = {
	["photovoltaic-plant-1"] = 5,
	["photovoltaic-plant-2"] = 5,
}
 
growing_plants = {}
TICKS_PER_SECOND = 60

-- checks if entity is a growing plant. adds it to the growing list if it is
function start_growing(plant, tick_count)
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
        if event.tick - growing_plants[i][2] > time_to_grow_dictionary[growing_plants[i][1].name] * TICKS_PER_SECOND then
            -- plant grows
            local plant_to_grow = growing_plants[i][1]
			
			-- if plant has already died, remove it from list instead
			if not plant_to_grow.valid then
				table.remove(growing_plants, i)
				do return end
			end
			
            local plant_name = plant_to_grow.name
            local plant_position = plant_to_grow.position
            local plant_surface = plant_to_grow.surface
            plant_to_grow.die()
			-- if plant dies, let it die, leave
			if evolution_dictionary[plant_name] == "die" then
				table.remove(growing_plants, i)
				do return end
			end
			-- else plant its next stage, remove old one
			if evolution_dictionary[plant_name] ~= nil then
				local new_plant = plant_surface.create_entity { name = evolution_dictionary[plant_name], position = plant_position, force = "player" }
				start_growing(new_plant, event.tick)
			end
            table.remove(growing_plants, i)
        end
    end
end)
