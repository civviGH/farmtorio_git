data:extend(
{
  {
    type = "lab",
    name = "nourishment-lab",
    icon = "__farmtorio__/graphics/icons/lab.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "nourishment-lab"},
    max_health = 250,
    corpse = "big-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__farmtorio__/graphics/entity/lab/lab.png",
      width = 113,
      height = 91,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = {0.2, 0.15}
    },
    off_animation =
    {
      filename = "__farmtorio__/graphics/entity/lab/lab.png",
      width = 113,
      height = 91,
      frame_count = 1,
      shift = {0.2, 0.15}
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "150kW",
    inputs =
    {
      "pommes",
      "cookie",
    },
    researching_speed = 2,
    module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "lab",
  },
  
  
   {
    type = "radar",
    name = "forestry",
    icon = "__farmtorio__/graphics/icons/forestry.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "forestry"},
    max_health = 150,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_per_sector = "100kJ",
    max_distance_of_sector_revealed = 0,
    max_distance_of_nearby_sector_revealed = 0,
    energy_per_nearby_scan = "1kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "100kW",
    pictures =
    {
      filename = "__farmtorio__/graphics/entity/forestry/forestry2.png",
      priority = "low",
      width = 64,
      height = 64,
      apply_projection = false,
      direction_count = 1
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 3,
    }
  },
  
  
     {
    type = "radar",
    name = "forestrymk2",
    icon = "__farmtorio__/graphics/icons/forestry2.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "forestrymk2"},
    max_health = 150,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_per_sector = "100kJ",
    max_distance_of_sector_revealed = 0,
    max_distance_of_nearby_sector_revealed = 0,
    energy_per_nearby_scan = "1kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "200kW",
    pictures =
    {
      filename = "__farmtorio__/graphics/entity/forestry/forestry2.png",
      priority = "low",
      width = 64,
      height = 64,
      apply_projection = false,
      direction_count = 1,
      tint = {r=.6,g=.9,b=.5,a=1}
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 3,
    }
  },
  
  
       {
    type = "radar",
    name = "lumbermill",
    icon = "__farmtorio__/graphics/icons/lumbermill.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "lumbermill"},
    max_health = 150,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_per_sector = "200kJ",
    max_distance_of_sector_revealed = 0,
    max_distance_of_nearby_sector_revealed = 0,
    energy_per_nearby_scan = "1kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "100kW",
    pictures =
    {
      filename = "__farmtorio__/graphics/entity/forestry/lumbermill_area.png",
      priority = "low",
      width = 640,
      height = 640,
      apply_projection = false,
      direction_count = 1
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
  },
  
  
  {
    type = "assembling-machine",
    name = "barn",
    icon = "__farmtorio__/graphics/icons/barn.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "barn"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-3.7, -3.7}, {3.7, 3.7}},
    selection_box = {{-4, -4}, {4, 4}},
    crafting_categories = {"farmcraft"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.05 / 1.5
    },
    energy_usage = "50kW",
    ingredient_count = 1,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }, -- todo
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }, -- todo
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animation =
    {
      filename = "__farmtorio__/graphics/entity/barn.png",
      priority="high",
      width = 256,
      height = 256,
      frame_count = 1,
      line_length = 1
    },
  },
  
  
    {
    type = "assembling-machine",
    name = "windmill",
    icon = "__farmtorio__/graphics/icons/windmill.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "windmill"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.7, -1.2}, {0.7, 1.2}},
    selection_box = {{-1, -1.5}, {1, 1.5}},
    crafting_categories = {"windmill"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "5kW",
    ingredient_count = 1,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }, -- todo
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }, -- todo
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animation =
    {
      filename = "__farmtorio__/graphics/entity/windmill.png",
      priority="high",
      width = 64,
      height = 96,
      frame_count = 1,
      line_length = 1
    },
  },

      {
    type = "assembling-machine",
    name = "genelab",
    icon = "__farmtorio__/graphics/icons/genelab.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "genelab"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"genelab"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "150kW",
    ingredient_count = 2,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }, -- todo
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }, -- todo
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animation =
    {
      filename = "__farmtorio__/graphics/entity/genelab.png",
      priority="high",
      width = 96,
      height = 96,
      frame_count = 1,
      line_length = 1
    },
  },
  
  
	{
    type = "radar",
    name = "slaughterhouse",
    icon = "__farmtorio__/graphics/icons/slaughterhouse.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "slaughterhouse"},
    max_health = 150,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_per_sector = "1000kJ",
    max_distance_of_sector_revealed = 0,
    max_distance_of_nearby_sector_revealed = 0,
    energy_per_nearby_scan = "1kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "500kW",
    pictures =
    {
      filename = "__farmtorio__/graphics/entity/forestry/slaughterhouse.png",
      priority = "low",
      width = 64,
      height = 64,
      apply_projection = false,
      direction_count = 1
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
  },
  
  	{
    type = "radar",
    name = "cowfarm",
    icon = "__farmtorio__/graphics/icons/cowfarm.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "cowfarm"},
    max_health = 150,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_per_sector = "1000kJ",
    max_distance_of_sector_revealed = 0,
    max_distance_of_nearby_sector_revealed = 0,
    energy_per_nearby_scan = "1kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "50kW",
    pictures =
    {
      filename = "__farmtorio__/graphics/entity/forestry/cowfarm.png",
      priority = "low",
      width = 64,
      height = 64,
      apply_projection = false,
      direction_count = 1
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
  },
}
)

