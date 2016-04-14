data:extend(
    {
          {
    type = "fluid",
    name = "fryer-fat",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.3, g=0.3, b=0},
    flow_color = {r=0.9, g=0.9, b=0.9},
    max_temperature = 200,
    icon = "__farmtorio__/graphics/icons/fryer-fat.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[fryer-fat]"
  },
  
    {
    type = "fluid",
    name = "beer",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.8, g=0.6, b=0.1},
    flow_color = {r=0.9, g=0.9, b=0.9},
    max_temperature = 100,
    icon = "__farmtorio__/graphics/icons/beer.png",
    pressure_to_speed_ratio = 0.6,
    flow_to_energy_ratio = 0.59,
    order = "f[beer]"
  },
  
  
    }
)