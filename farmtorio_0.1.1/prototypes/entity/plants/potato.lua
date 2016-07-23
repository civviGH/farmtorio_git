data:extend({
	-- recipes for item	
	{
		type = "recipe",
		name = "find-potato-seeds",
		icon = "__farmtorio__/graphics/icons/potatoseeds-dark.png",
		subgroup = "seeds-subgroup",
		enabled = "true",
		energy_required = 0.5,
		ingredients =
		{
			{"raw-wood", 50}
		},
		result = "potato-seeds"
	},	
	{
		type = "recipe",
		name = "potato-seeds",
		subgroup = "seeds-subgroup",
		enabled = "true",
		energy_required = 0.5,
		ingredients =
		{
			{"potato", 1}
		},
		results =
		{
			{type="item", name="potato-seeds", amount = 1}
		}
	},   
	-- item that plants potato-plant-1
	{
		type = "item",
		name = "potato-seeds",
		icon = "__farmtorio__/graphics/icons/potato-seeds.png",
		flags = {"goes-to-quickbar"},
		subgroup = "seeds-subgroup",
		order = "h[potatoseeds]",
		place_result = "potato-plant-1",
		stack_size = 200
	},
	-- resource you get
	{
		type = "item",
		name = "potato",
		icon = "__farmtorio__/graphics/icons/potato-dark.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "farmcraft-subgroup",
		order = "a[potato]",
		stack_size = 200
	},
	
	-- entity
	{
        type = "tree",
        name = "potato-plant-1",
        icon = "__farmtorio__/graphics/icons/potato-plant.png",
        flags = { "placeable-neutral", "breaths-air" },
        minable =
        {
            mining_particle = "wooden-particle",
            mining_time = 1,
            result = "potato",
            count = 2
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
                filename = "__farmtorio__/graphics/entity/plants/potato-plant-1.png",
                width = 40,
                height = 40
			}
		}
	},
})