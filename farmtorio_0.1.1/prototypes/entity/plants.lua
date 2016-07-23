data:extend({
    {
		type = "tree",
		name = "pumpkinplant",
		icon = "__farmtorio__/graphics/icons/pumpkin.png",
		flags = { "placeable-neutral", "breaths-air" },
		minable =
		{
			mining_particle = "wooden-particle",
			mining_time = 1,
			result = "pumpkin",
			count = 1
		},
		emissions_per_tick = -0.0005,
		max_health = 50,
		collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		subgroup = "trees",
		order = "e[pumpkin]",
		vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
		pictures =
		{
			{
				filename = "__farmtorio__/graphics/entity/plants/pumpkin.png",
				width = 34,
				height = 34
			}
		}
	},
	
	{
		type = "tree",
		name = "photovoltaic-plant-1",
		icon = "__farmtorio__/graphics/icons/photovoltaic-plant.png",
		flags = { "placeable-neutral", "breaths-air" },
		minable =
		{
			mining_particle = "wooden-particle",
			mining_time = 1,
			result = "photovoltaic-plant-1",
			count = 0
		},
		emissions_per_tick = -0.0005,
		max_health = 50,
		collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
		selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
		subgroup = "trees",
		order = "e[pumpkin]",
		vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
		pictures =
		{
			{
				filename = "__farmtorio__/graphics/entity/plants/photovoltaic-plant-1.png",
				width = 32,
				height = 32
			}
		}
	},
	
	{
		type = "tree",
	name = "photovoltaic-plant-2",
	icon = "__farmtorio__/graphics/icons/photovoltaic-plant.png",
	flags = { "placeable-neutral", "breaths-air" },
	minable =
	{
	mining_particle = "wooden-particle",
	mining_time = 1,
	result = "photovoltaic-plant-1",
	count = 0
	},
	emissions_per_tick = -0.0005,
	max_health = 50,
	collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
	selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
	subgroup = "trees",
	order = "e[pumpkin]",
	vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
	pictures =
	{
	{
	filename = "__farmtorio__/graphics/entity/plants/photovoltaic-plant-2.png",
	width = 32,
	height = 32
	}
	}
	},
	})		