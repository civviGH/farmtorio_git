--[[
	
	list = { 
	{"potato", 3, 2}
	{"pumpkin", 2, 1}
	{"wheat", 5, 2}
	etc...
	
	reads plantname, cycles, amount of resource for harvesting
]]

list = {
	{"dummy", 3, 3, "potato"},
}


function make_evolution(plantlist)
	for i=1,#plantlist, 1 do
		for k=1, plantlist[i][2], 1 do
			
			-- if it is the last stage, make it minable
			if k == plantlist[i][2] then
				amount = plantlist[i][3]
				else 
				amount = 0
			end	
			
			data:extend({
				{
					type = "tree",
					name = plantlist[i][1].."-plant-"..tostring(k),
					icon = "__farmtorio__/graphics/icons/"..plantlist[i][1].."-plant.png",
					flags = { "placeable-neutral", "breaths-air"},
					minable = {
						mining_particle = "wooden-particle",
						mining_time = 0.5,
						result = plantlist[i][4],
						count = amount
					},
					emissions_per_tick = -0.00025,
					max_health = 10,
					collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        			selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
					subgroup = "trees",
					order = "c[potatoplant]",
					vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
					pictures =
					{
						{
							filename = "__farmtorio__/graphics/entity/plants/".. plantlist[i][1] .. "-plant-" .. tostring(k) .. ".png",
							width = 32,
							height = 32
						}
					}
				}
				
			})
		end
	end 
end

function make_recipes(plantlist)
	for i = 1, #plantlist, 1 do
		local plant_name = plantlist[i][1]
		-- make the recipe		
		data:extend({
			{
				type = "recipe",
				name = plant_name.."-plant",
				enabled = "true",
				energy_required = 0.5,
				ingredients = {{"wood", 1}},
				result = plant_name.."-plant-1"
			},
			-- make the item
			{
				type = "item",
				name = plant_name.."-plant-1",
				icon = "__farmtorio__/graphics/icons/"..plant_name.. "-plant.png",
				flags = {"goes-to-quickbar"},
				subgroup = "seeds-subgroup",
				order = "l",
				place_result = plant_name.."-plant-1",
				stack_size = 200
			}
		})
		
	end
end

make_evolution(list)
make_recipes(list)