data:extend({
  
  {
    type = "tree",
    name = "ironorebush",
    icon = "__farmtorio__/graphics/icons/ironorebush.png",
    flags = {"placeable-neutral", "breaths-air"},
    minable =
    {
        mining_particle = "wooden-particle",
        mining_time = 1,
        result = "iron-ore",
        count = 2
    },
    emissions_per_tick = -0.0005,
    max_health = 50,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    subgroup = "trees",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    pictures =
    {
        {
      filename = "__farmtorio__/graphics/entity/plants/ironorebush.png",
      width = 36,
      height = 36
        }
    }
    },
   
})