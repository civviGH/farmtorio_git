require "defines"

-- list of trees
local trees = {
  --"dead-dry-hairy-tree",
  --"dead-grey-trunk",
  --"dead-tree",
  --"dry-hairy-tree",
  --"dry-tree",
  --"green-coral",
  "tree-01",
  "tree-02",
  "tree-02-red",
  "tree-03",
  "tree-04",
  "tree-05",
  "tree-06",
  "tree-06-brown",
  "tree-07",
  "tree-08",
  "tree-08-brown",
  "tree-08-red",
  "tree-09",
  "tree-09-brown",
  "tree-09-red"
}

-- tells the forestry what plants belong to what seeds
local seeddic = {
        ["potatoseeds"] = "potatoplant",
        ["sunflowerseeds"] = "sunflowerplant",
        ["wheatseeds"] = "wheatplant",
        ["raw-wood"] = "tree-01"
}


-- looks confusing. is just checking the ring in a certain radius around the building in an awkward manner. testing ingame shows best
function check_ring(surface, tree, pos, ring)
    local posx = pos["x"]
    local posy = pos["y"]
    -- top and bottom line
    for x=posx-ring, posx+ring, 1 do
        for y=posy-ring, posy+ring, 2*ring do
            if surface.can_place_entity{name = tree, position = {x, y}} then
                if surface.get_tile(x, y).name ~= "concrete" and surface.get_tile(x, y).name ~= "woodfloor" then
                    return {x, y}
                end
            end
        end
    end
    
    -- left and right line
    for x=posx-ring, posx+ring, 2*ring do
        for y=posy-ring, posy+ring, 1 do
            if surface.can_place_entity{name = tree, position = {x, y}} then
                if surface.get_tile(x, y).name ~= "concrete" and surface.get_tile(x, y).name ~= "woodfloor" then
                    return {x, y}
                end
            end
        end
    end
    return nil
end

-- find a non concrete position to plant "tree" on
function find_non_concrete_position(surface, tree, pos, rad)
    for ring=1, rad, 1 do
        -- makes it so the positions next to the building get checked first. 
        -- that way the forestry doesnt start on the top left of the rectangle it can place on, making it less awkward.
        local tmp = check_ring(surface, tree, pos, ring) 
        
        -- got something? return it, else return nil
        if tmp ~= nil then
            return tmp
        end
    end
    return nil
end


-- gets a (random) chest adjacent to a radar. if there are more than one, depends on the implementation of find_entities_filtered what chest is selected first.
-- needs rework for buildings > 2x2
function find_target_chest(radar)
    local posx = radar.position["x"]
    local posy = radar.position["y"]
    -- find anything that is a "container"
    local chests = radar.surface.find_entities_filtered{area= {{posx-2, posy-2},{posx+2, posy+2}},type="container"}
    -- got something? return it, else nil
    if chests[1] ~= nil then return chests[1] end
    return nil
end


-- like the chest function, but finds any "tree" entity in a certain radious around the radar
function find_tree_to_chop(radar, radius)
    local posx = radar.position["x"]
    local posy = radar.position["y"]
    local trees = radar.surface.find_entities_filtered{area={{posx-radius, posy-radius},{posx+radius, posy+radius}}, type="tree"}
    -- got something? return it, else nil
    if trees[1] ~= nil then return trees[1] end
    return nil
end

-- find anything that is a seed in a chest. technically only returns the first it finds.
function get_seed_from_chest(inventory)
    for k,_ in pairs(inventory) do
        if string.find(k, "seeds") ~= nil then
            return k
        end
        -- raw wood counts as seeds for trees
        if k == "raw-wood" then
            return k
        end
    end
    return nil
end

-- find bushes in chest
function get_bush_from_chest(inventory)
    for k,_ in pairs(inventory) do
        if string.find(k, "bush") ~= nil then
            return k
        end
    end
    return nil
end

-- all forestry buildings have their code here
script.on_event(defines.events.on_sector_scanned, function(event)
    -- get radar that called event
    local radar = event.radar
    
    -- check which type of radar called the event
    if string.find(radar.name, "forestry") ~= nil then
        -- forestry building
        -- find chest with seeds nearby
        local seedchest = find_target_chest(radar)
        if seedchest ~= nil then 
            -- check if/what seeds are in the chest. get inventory list
            local inventory = seedchest.get_inventory(defines.inventory.chest).get_contents()
            local seedtoplant = get_seed_from_chest(inventory)
            local bushtoplant = get_bush_from_chest(inventory)
            
            -- seed found
            if seedtoplant ~= nil then
                local plantname = seeddic[seedtoplant]
                -- plant radius. tweak for mk > 1 ... or dont?
                local radius = 10
                
                --if string.find(radar.name, "2") ~= nil then
                --    radius = radius * 2
                --end
                
                -- target for planting
                local targetarea = find_non_concrete_position(radar.surface, plantname, radar.position, radius)
                
                -- plant if there is a target area
                if targetarea ~= nil then
                    radar.surface.create_entity{name = plantname, position = targetarea}
                    
                    -- remove seed
                    seedchest.get_inventory(defines.inventory.chest).remove({name=seedtoplant,count=1})
                end
            -- seeds are priority. if none are there, check for bushes
            elseif  bushtoplant ~= nil then
                local radius = 10
                -- target for planting
                local targetarea = find_non_concrete_position(radar.surface, bushtoplant, radar.position, radius)
                
                -- plant if there is a target area
                if targetarea ~= nil then
                    radar.surface.create_entity{name = bushtoplant, position = targetarea}
                    
                    -- remove seed
                    seedchest.get_inventory(defines.inventory.chest).remove({name=bushtoplant,count=1})
                end
            end
            
        end
    elseif string.find(radar.name, "lumbermill") ~= nil then
        -- lumbermill building
        
        -- check if chest is nearby
        local targetchest = find_target_chest(radar)
        if targetchest ~= nil then
            -- find tree/plant, check what product it gives
            local radius = 10
            -- tweak radius for mk > 1... or dont?
            local treetochop = find_tree_to_chop(radar, radius)
            if treetochop ~= nil then
                local producttoget = treetochop.prototype.mineable_properties["products"][1]["name"]
                if treetochop.prototype.mineable_properties["products"][1]["amount"] == nil then
                    amounttoget = treetochop.prototype.mineable_properties["products"][1]["amount_max"]
                else
                    amounttoget = treetochop.prototype.mineable_properties["products"][1]["amount"]
                end

                -- can this product be placed inside the chest?
                if targetchest.can_insert(producttoget) then
                    -- item can be inserted. now place it in chest, and let tree die
                    targetchest.insert({name=producttoget, count=amounttoget})
                    treetochop.die()
                end
            end
        end
	elseif string.find(radar.name, "cowfarm") ~= nil then
		-- cowfarm building
		local surface = radar.surface
		
		-- find chest nearby
		local targetchest = find_target_chest(radar)
		
		-- found a chest?
		if targetchest ~= nil then
			-- check if resources for cowspawn are in chest
			if targetchest.get_inventory(defines.inventory.chest).get_item_count("hay") >= 35 then
				-- check for targetlocation
				local targetlocation = surface.find_non_colliding_position("cow", radar.position, 3, 1)
				if targetlocation ~= nil then
					-- spawn cow, remove resources
					surface.create_entity{name = "cow", position = targetlocation, force = "neutral"}
					targetchest.get_inventory(defines.inventory.chest).remove({name="hay", count=35})
				end
			end
		end
	elseif string.find(radar.name, "slaughterhouse") ~= nil then
		-- slaughterhouse found
		local positionx = radar.position.x
		local positiony = radar.position.y
		-- find chest to put meat in
		local targetchest = find_target_chest(radar)
		if targetchest ~= nil then
			-- does steak fit?
			if targetchest.get_inventory(defines.inventory.chest).can_insert({name="steak",count=5}) then
				local targetentity = radar.surface.find_entities_filtered{area = {{positionx-2,positiony-2},{positionx+2,positiony+2}}, name="cow"}
				if targetentity[1] ~= nil then
					-- kill the cow, put steak in chest
					targetentity[1].die()
					targetchest.insert({name="steak", count = 5})
				end
			end
		end
    end
    
end)


-- code for the technologies
script.on_event(defines.events.on_research_finished, function(event)
    local technology = event.research
    -- get current modifier
    local modifier = game.forces["player"].manual_crafting_speed_modifier
    
    -- first occurence of the crafting speed technology sets the modifier from 0 to 1
    if technology.name == "craftingspeed1" then
        game.forces["player"].manual_crafting_speed_modifier = modifier + 1
    -- every other technology doubles it
    elseif string.find(technology.name, "craftingspeed") ~= nil then
        game.forces["player"].manual_crafting_speed_modifier = modifier * 2
    end
    
    -- adds gui elements if the teleport technology was researched
    if technology.name == "teleporttech" then
        for k,v in pairs(game.players) do
            v.gui.top.add{type = "button", name = "savebutton", caption = "save"}
            v.gui.top.add{type = "button", name = "portbutton", caption = "port"}
        end
    end
end)


-- event i use for debbuging purposes
script.on_event(defines.events.on_built_entity, function(event)
    
end)

-- the list with saved post location indexed by the player name.
portlist = {}

script.on_event(defines.events.on_gui_click, function(event)
    -- get the player clicking
    local player = game.players[event.player_index]
    
    -- savebutton pressed
    if event.element.name == "savebutton" then
    
        -- add current position to the table indexed by player name
        portlist[player.name] = player.position
        player.print("Saved position: x = " .. player.position["x"] .. " | y = " .. player.position["y"])
    end
    
    -- portbutton pressed
    if event.element.name == "portbutton" then
    
        -- get saved position if there is one
        local positiontoport = portlist[player.name]
        -- get players main inventory
        local playerinventory = player.get_inventory(defines.inventory.player_main)
        -- teleport pill in inventory?
        if playerinventory.get_item_count("teleport-pill") >= 1 then
            -- actual teleport position?
            if positiontoport ~= nil then
                -- port the player
                player.teleport(positiontoport)
                player.print("Ported to position: x = " .. player.position["x"] .. " | y = " .. player.position["y"])
                -- remove 1 port pill from inventory
                playerinventory.remove({name="teleport-pill",count=1})
                player.print("Used 1 pill. " .. playerinventory.get_item_count("teleport-pill") .. " pills left in inventory.") 
            else
                player.print("No location to port to saved yet.")
            end
        else 
            player.print("Teleport Pill needed.")
        end
    end
end)