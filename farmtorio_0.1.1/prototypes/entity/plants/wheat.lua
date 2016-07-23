data:extend({
	-- recipes for item
	{
		type = "recipe",
		name = "find-wheat-seeds",
		subgroup = "seeds-subgroup",
		enabled = "true",
		energy_required = 0.5,
		ingredients =
		{
			{"raw-wood", 50}
		},
		result = "wheat-seeds"
	},  
	{
		type = "recipe",
		name = "wheat-seeds",
		subgroup = "seeds-subgroup",
		enabled = "true",
		energy_required = 0.5,
		ingredients =
		{
			{"wheat", 1}
		},
		results =
		{
			{type="item", name="wheat-seeds", amount = 3}
		}
	},
	-- item that places wheat-plant-1
	{
		type = "item",
		name = "wheat-seeds",
		icon = "__farmtorio__/graphics/icons/wheat-seeds.png",
		flags = {"goes-to-quickbar"},
		subgroup = "seeds-subgroup",
		order = "l[wheatseeds]",
		place_result = "wheat-plant-1",
		stack_size = 200
	},  
	-- resource you get
	{
		type = "item",
		name = "wheat",
		icon = "__farmtorio__/graphics/icons/wheat.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "k[wheat]",
		stack_size = 200
	},
	-- entity
    {
		type = "tree",
		name = "wheat-plant-1",
		icon = "__farmtorio__/graphics/icons/wheat-plant.png",
		flags = { "placeable-neutral", "breaths-air" },
		minable =
		{
			mining_particle = "wooden-particle",
			mining_time = 1,
			result = "wheat",
			count = 1
		},
		emissions_per_tick = -0.0005,
		max_health = 50,
		collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		subgroup = "trees",
		order = "d[wheatplant]",
		vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
		pictures =
		{
			{
				filename = "__farmtorio__/graphics/entity/plants/wheat-plant-1.png",
				width = 32,
				height = 32
			}
		}
	},
})