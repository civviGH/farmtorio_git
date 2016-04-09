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

local seeddic = {
        ["potatoseeds"] = "potatoplant",
        ["sunflowerseeds"] = "sunflowerplant",
        ["wheatseeds"] = "wheatplant"
}

function check_ring(surface, tree, pos, ring)
    local posx = pos["x"]
    local posy = pos["y"]
    for x=posx-ring, posx+ring, 1 do
        for y=posy-ring, posy+ring, 2*ring do
            if surface.can_place_entity{name = tree, position = {x, y}} then
                if surface.get_tile(x, y).name ~= "concrete" then
                    return {x, y}
                end
            end
        end
    end
    for x=posx-ring, posx+ring, 2*ring do
        for y=posy-ring, posy+ring, 1 do
            if surface.can_place_entity{name = tree, position = {x, y}} then
                if surface.get_tile(x, y).name ~= "concrete" then
                    return {x, y}
                end
            end
        end
    end
    return nil
end

function find_non_concrete_position(surface, tree, pos, rad)
    for ring=1, rad, 1 do
        local tmp = check_ring(surface, tree, pos, ring) 
        if tmp ~= nil then
            return tmp
        end
    end
    return nil
end

function find_target_chest(radar)
    local posx = radar.position["x"]
    local posy = radar.position["y"]
    local chests = radar.surface.find_entities_filtered{area= {{posx-2, posy-2},{posx+2, posy+2}},type="container"}
    if chests[1] ~= nil then return chests[1] end
    return nil
end

function find_tree_to_chop(radar, radius)
    local posx = radar.position["x"]
    local posy = radar.position["y"]
    local trees = radar.surface.find_entities_filtered{area={{posx-radius, posy-radius},{posx+radius, posy+radius}}, type="tree"}
    if trees[1] ~= nil then return trees[1] end
    return nil
end

function get_seed_from_chest(inventory)
    for k,_ in pairs(inventory) do
        if string.find(k, "seeds") ~= nil then
            return k
        end
    end
    return nil
end

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
            
            -- seed found
            if seedtoplant ~= nil then
                local plantname = seeddic[seedtoplant]
                -- plant radius. tweak for mk > 1
                local radius = 10
                
                if string.find(radar.name, "2") ~= nil then
                    radius = radius * 2
                end
                
                -- target for planting
                local targetarea = find_non_concrete_position(radar.surface, plantname, radar.position, radius)
                
                -- plant if there is a target area
                if targetarea ~= nil then
                    radar.surface.create_entity{name = plantname, position = targetarea}
                    
                    -- remove seed
                    seedchest.get_inventory(defines.inventory.chest).remove({name=seedtoplant,count=1})
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
            -- tweak radius for mk > 1
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
    end
    
end)

script.on_event(defines.events.on_research_finished, function(event)
    local technology = event.research
    local modifier = game.forces["player"].manual_crafting_speed_modifier
    if technology.name == "craftingspeed1" then
        game.forces["player"].manual_crafting_speed_modifier = modifier + 1
    elseif string.find(technology.name, "craftingspeed") ~= nil then
        game.forces["player"].manual_crafting_speed_modifier = modifier * 2
    end
    
    if technology.name == "teleporttech" then
        for k,v in pairs(game.players) do
            v.gui.top.add{type = "button", name = "savebutton", caption = "save"}
            v.gui.top.add{type = "button", name = "portbutton", caption = "port"}
        end
    end
end)

script.on_event(defines.events.on_built_entity, function(event)
    
end)

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