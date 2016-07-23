data:extend({
	-- recipes for item
	{
		type = "recipe",
		name = "find-sunflower-seeds",
		subgroup = "seeds-subgroup",
		enabled = "true",
		energy_required = 0.5,
		ingredients =
		{
			{"raw-wood", 50}
		},
		result = "sunflower-seeds"
	},	
	{
		type = "recipe",
		name = "sunflower-seeds",
		subgroup = "seeds-subgroup",
		enabled = "true",
		energy_required = 0.5,
		ingredients =
		{
			{"sunflower", 1}
		},
		results =
		{
			{type="item", name="sunflower-seeds", amount = 4}
		}
	},
	
	-- item that plants sunflower-plant-1
	{
		type = "item",
		name = "sunflower-seeds",
		icon = "__farmtorio__/graphics/icons/sunflower-seeds.png",
		flags = {"goes-to-quickbar"},
		subgroup = "seeds-subgroup",
		order = "i[sunflowerseeds]",
		place_result = "sunflower-plant-1",
		stack_size = 200
	},
	-- resource you get
	{
		type = "item",
		name = "sunflower",
		icon = "__farmtorio__/graphics/icons/sunflower.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "j[sunflower]",
		stack_size = 200
	},  
	-- entity
	{
        type = "tree",
        name = "sunflower-plant-1",
        icon = "__farmtorio__/graphics/icons/sunflower-plant.png",
        flags = { "placeable-neutral", "breaths-air" },
        minable =
        {
            mining_particle = "wooden-particle",
            mining_time = 1,
            result = "sunflower",
            count = 1
		},
        emissions_per_tick = -0.0005,
        max_health = 50,
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        subgroup = "trees",
        order = "c[potatoplant]",
        vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
        pictures =
        {
            {
                filename = "__farmtorio__/graphics/entity/plants/sunflower-plant-1.png",
                width = 40,
                height = 40
			}
		}
	},
})