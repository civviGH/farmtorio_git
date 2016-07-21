--[[TODO
-- destroyed entities von growing_plants entfernen
-- verallgemeinern auf alle photovoltaic stufen
-- photovoltaic pflanzen müssen noch energie abgeben
 ]]

growing_plants = {}

function start_growing(plant, tick_count)
    if plant.name ~= "photovoltaic-plant-1" then
        do return end
    end
    growing_plants[#growing_plants + 1] = { plant, tick_count }
end

script.on_event(defines.events.on_tick, function(event)
    if event.tick % 60 ~= 0 then
        do return end
    end
    for i = #growing_plants, 1, -1 do
        if event.tick - growing_plants[i][2] > 5 * 60 then
            -- plant grows
            local plant_to_grow = growing_plants[i][1]

            local plant_name = plant_to_grow.name
            local plant_position = plant_to_grow.position
            local plant_surface = plant_to_grow.surface
            plant_to_grow.die()
            if plant_name == "photovoltaic-plant-1" then
                local new_plant = plant_surface.create_entity { name = "photovoltaic-plant-2", position = plant_position, force = "player" }
                growing_plants[#growing_plants + 1] = { new_plant, event.tick }
            end
            table.remove(growing_plants, i)
        end
    end
end)
