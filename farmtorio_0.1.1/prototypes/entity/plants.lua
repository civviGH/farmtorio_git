data:extend(
{
{
    type = "tree",
    name = "potatoplant",
    icon = "__farmtorio__/graphics/icons/greenplant.png",
    flags = {"placeable-neutral", "breaths-air"},
    minable =
    {
        mining_particle = "wooden-particle",
        mining_time = 1,
        result = "potato",
        count = 2
    },
    emissions_per_tick = -0.0005,
    max_health = 50,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    subgroup = "trees",
    order = "c[potatoplant]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    pictures =
    {
        {
      filename = "__farmtorio__/graphics/entity/plants/greenplant2.png",
      width = 40,
      height = 40
        }
    }
    },
    
{
    type = "tree",
    name = "sunflowerplant",
    icon = "__farmtorio__/graphics/icons/greenplant.png",
    flags = {"placeable-neutral", "breaths-air"},
    minable =
    {
        mining_particle = "wooden-particle",
        mining_time = 1,
        result = "sunflower",
        count = 1
    },
    emissions_per_tick = -0.0005,
    max_health = 50,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    subgroup = "trees",
    order = "c[potatoplant]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    pictures =
    {
        {
      filename = "__farmtorio__/graphics/entity/plants/sunflower.png",
      width = 40,
      height = 40
        }
    }
    },
        
{
    type = "tree",
    name = "wheatplant",
    icon = "__farmtorio__/graphics/icons/greenplant.png",
    flags = {"placeable-neutral", "breaths-air"},
    minable =
    {
        mining_particle = "wooden-particle",
        mining_time = 1,
        result = "wheat",
        count = 1
    },
    emissions_per_tick = -0.0005,
    max_health = 50,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    subgroup = "trees",
    order = "d[wheatplant]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    pictures =
    {
        {
      filename = "__farmtorio__/graphics/entity/plants/wheatplant.png",
      width = 32,
      height = 32
        }
    }
    },
	
	{
    type = "tree",
    name = "pumpkinplant",
    icon = "__farmtorio__/graphics/icons/pumpkin.png",
    flags = {"placeable-neutral", "breaths-air"},
    minable =
    {
        mining_particle = "wooden-particle",
        mining_time = 1,
        result = "pumpkin",
        count = 1
    },
    emissions_per_tick = -0.0005,
    max_health = 50,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    subgroup = "trees",
    order = "e[pumpkin]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    pictures =
    {
        {
      filename = "__farmtorio__/graphics/entity/plants/pumpkin.png",
      width = 34,
      height = 34
        }
    }
    },
	
})